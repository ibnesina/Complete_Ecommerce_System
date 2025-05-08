<?php

namespace App\Http\Livewire;

use Stripe;
use Exception;
use App\Models\Order;
use App\Models\Ledger;
use App\Mail\OrderMail;
use App\Models\Balance;
use App\Models\Product;
use Livewire\Component;
use Twilio\Rest\Client;
use App\Models\OrderItem;
use App\Models\Transaction;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Gloudemans\Shoppingcart\Facades\Cart;

class CheckoutComponent extends Component
{
    public $ship_to_different;

    public $firstname;
    public $lastname;
    public $email;
    public $mobile;
    public $line1;
    public $line2;
    public $city;
    public $province;
    public $country;
    public $zipcode;

    public $paymentmode;
    public $thankyou;

    public $card_no;
    public $exp_month;
    public $exp_year;
    public $cvc;

    public $SKU;
    public $name;
    public $category_id;

    public function updated($fields)
    {
        // $this->validateOnly($fields, [
        //     'firstname' => 'required',
        //     'lastname' => 'required',
        //     'email' => 'required|email',
        //     'mobile' => 'required|numeric',
        //     'line1' => 'required',
        //     'city' => 'required',
        //     'province' => 'required',
        //     'country' => 'required',
        //     'zipcode' => 'required',
        //     'paymentmode' => 'required'
        // ]);

        // if($this->paymentmode=='card') 
        // {
        //     $this->validateOnly($fields, [
        //         'card_no' => 'required|numeric',
        //         'exp_month' => 'required|numeric',
        //         'exp_year' => 'required|numeric',
        //         'cvc' => 'required|numeric',
        //     ]);   
        // }
    }

    public function placeOrder()
    {
        $this->validate([
            'firstname' => 'required',
            'lastname' => 'required',
            'email' => 'required|email',
            'mobile' => 'required|numeric',
            'line1' => 'required',
            'city' => 'required',
            'province' => 'required',
            'country' => 'required',
            'zipcode' => 'required',
            'paymentmode' => 'required'
        ]);

        $order = new Order();
        $order->user_id = Auth::user()->id;
        $order->subtotal = session()->get('checkout')['subtotal'];
        // $order->discount = session()->get('checkout')['discount'];
        $order->tax = session()->get('checkout')['tax'];
        $order->total = session()->get('checkout')['total'];
        $order->firstname = $this->firstname;
        $order->lastname = $this->lastname;
        $order->email = $this->email;
        $order->mobile = $this->mobile;
        $order->line1 = $this->line1;
        $order->line2 = $this->line2;
        $order->city = $this->city;
        $order->province = $this->province;
        $order->country = $this->country;
        $order->zipcode = $this->zipcode;
        $order->status = 'ordered';
        // $order->is_shipping_different = $this->ship_to_different;
        $order->save();

        $allProducts = Product::all();

        foreach(Cart::instance('cart')->content() as $item)
        {
            $orderItem = new OrderItem();
            $orderItem->product_id = $item->id;
            $orderItem->order_id = $order->id;
            $orderItem->price = $item->price;
            $orderItem->quantity = $item->qty;
            $orderItem->save();

            //ledger table
            foreach($allProducts as $allProduct) {
                if($allProduct->id == $item->id) {
                    $this->SKU = $allProduct->SKU;
                    $this->name = $allProduct->name;
                    $this->category_id = $allProduct->category_id;
                    break;
                }
            }
            $check_l = Ledger::where('SKU', $this->SKU)->latest()->first();

            $product_l = new Ledger();
            $product_l->description = $this->name . " sold";
            $product_l->SKU = $this->SKU;
            $product_l->credit = $item->qty;
            if($check_l) {
                $product_l->balance = $check_l->balance - $item->qty;
            }
            else {
                $product_l->balance = $item->qty;
            }
            $product_l->category_id = $this->category_id;
            $product_l->save();
            //ledger table

            //balance table
            $product_b = Balance::where('SKU', $this->SKU)->first();
            if($product_b) {
                $product_b->quantity = $product_b->quantity - $item->qty;
                $product_b->save();
            }

            //products table
            $productTable = Product::where('SKU', $this->SKU)->first();
            if($productTable) {
                $productTable->quantity = $productTable->quantity - $item->qty;
                $productTable->save();
            }
        }
        

        if($this->paymentmode=='card') 
        { 
            \Stripe\Stripe::setApiKey(env('STRIPE_SECRET')); 
            $session = \Stripe\Checkout\Session::create([
                'line_items' => [
                    [
                        'price_data' => [
                            'currency' => 'USD',
                            'product_data' => [
                                'name' => 'Total Bill:',
                            ],
                            'unit_amount' => session()->get('checkout')['total'] * 100,
                        ],
                        'quantity' => 1,
                    ],
                ],
                'mode' => 'payment',
                'success_url' => route('thankyou'),
                'cancel_url' => route('product.cart'),
            ]); 
            $this->makeTransaction($order->id, 'approved');
            
            $this->sendSmsNotification($order);
            $this->sendOrderConfirmationMail($order);
            $this->resetCart();
            return redirect()->away($session->url);
        }
        if($this->paymentmode == 'cod') 
        {
            $this->makeTransaction($order->id, 'pending');
            $this->resetCart();
            $this->thankyou = 1;
            $this->sendSmsNotification($order);
            $this->sendOrderConfirmationMail($order);
        }
    }

    public function resetCart()
    {
        Cart::instance('cart')->destroy();
        session()->forget('cehckout');
    }

    public function makeTransaction($order_id, $status) 
    {
            $transaction = new Transaction();
            $transaction->user_id = Auth::user()->id;
            $transaction->order_id = $order_id;
            $transaction->mode = $this->paymentmode;
            $transaction->status = $status;
            $transaction->save();
    }

    public function sendOrderConfirmationMail($order) 
    {
        try {
            Mail::to($order->email)->send(new OrderMail($order));
        } catch(Exception $e) {

        }
    }

    public function sendSmsNotification($order) 
    {
        $receiver_number = '+8801670632145';
        $message = 'Congratulations! Your order confirmed Successfully. Your bill is: $'.session()->get('checkout')['total'];

        try {
            $account_sid = getenv("TWILIO_SID");
            $auth_token = getenv("TWILIO_TOKEN");
            $twilio_number = getenv("TWILIO_FROM");
  
            $client = new Client($account_sid, $auth_token);
            $client->messages->create($receiver_number,[
                'from' => $twilio_number, 
                'body' => $message
            ]);
        }catch (Exception $e) {
            //
        }
    }

    public function verifyForCheckout()
    {
        if(!Auth::check())
        {
            return redirect()->route('login');
        }
        
        else if($this->thankyou) 
        {  
            return redirect()->route('thankyou');
        }
        else if(!session()->get('checkout'))
        {
            return redirect()->route('product.cart');
        }
    }

    public function render()
    {
        $this->verifyForCheckout();
        return view('livewire.checkout-component')->layout("layouts.base");
    }
}
