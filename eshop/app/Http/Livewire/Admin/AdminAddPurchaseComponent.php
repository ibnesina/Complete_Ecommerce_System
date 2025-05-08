<?php

namespace App\Http\Livewire\Admin;

use App\Models\Balance;
use Livewire\Component;
use App\Models\Category;
use App\Models\Ledger;
use App\Models\Product;
use App\Models\Purchase;
use Illuminate\Support\Str;

class AdminAddPurchaseComponent extends Component
{
    public $name;
    public $slug;
    public $price;
    public $SKU;
    public $quantity;
    public $category_id;
    public $rate;
    public $balance;

    public function mount() {
        
    }

    public function addProduct()
    {
        $this->validate([
            'name' => 'required',
            // 'slug' => 'required|unique:products',
            'price' => 'required|numeric',
            'SKU' => 'required',
            'quantity' => 'required|numeric',
            'category_id' => 'required'
        ]);

        $product = new Purchase();
        $product->name = $this->name;
        $product->price = $this->price;
        $product->SKU = $this->SKU;
        $product->quantity = $this->quantity;
        $product->category_id = $this->category_id;
        $product->save();
        session()->flash('message', 'Purchased product has been added Successfully');

        $product_b = Balance::where('SKU', $this->SKU)->first();
        if($product_b) {
            $price = ($product_b->quantity * $product_b->rate) + ($product->price);
            $product_b->rate = $price*1.0 / ($product_b->quantity+$product->quantity);
            $product_b->quantity = $product_b->quantity+$product->quantity;
            $product_b->save();
        }
        else {
            $product_b = new Balance();
            $product_b->name = $this->name;
            $product_b->rate = $this->price / $this->quantity;
            $product_b->SKU = $this->SKU;
            $product_b->quantity = $this->quantity;
            $product_b->category_id = $this->category_id;
            $product_b->save();
        }

        $check_l = Ledger::where('SKU', $this->SKU)->first();
        
        $product_l = new Ledger();
        $product_l->description = $this->name . " purchased";
        $product_l->SKU = $this->SKU;
        $product_l->debit = $this->quantity;
        if($check_l) {
            $product_l->balance = $check_l->balance + $product->quantity;
        }
        else {
            $product_l->balance = $product->quantity;
        }
        $product_l->category_id = $this->category_id;
        $product_l->save();

    }

    public function render()
    {
        $purchase = Purchase::where('name', $this->name)->first();
        if ($purchase) {
            $this->SKU = $purchase->SKU;
        }
        
        $purchases = Purchase::orderBy('name', 'asc')->get()->unique('name');
        $categories = Category::orderBy('name', 'asc')->get();
        return view('livewire.admin.admin-add-purchase-component', ['categories' => $categories, 'purchases'=>$purchases])->layout('layouts.base');
    }
}
