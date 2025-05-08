<?php

namespace App\Http\Livewire;

use App\Models\Category;
use App\Models\HomeCategory;
use App\Models\Product;
use App\Models\Sale;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class HomeComponent extends Component
{
    public function store($product_id, $product_name, $product_price)
    {
        Cart::instance('cart')->add($product_id, $product_name, 1, $product_price)->associate('App\Models\Product');
        session()->flash('success_message', 'Item added in Cart');
        return redirect()->route('product.cart');
    }

    public function render()
    {
        $popular_products = Product::inRandomOrder()->limit(8)->get();

        $lproducts = Product::orderBy('created_at', 'DESC')->get()->take(8);

        $category = HomeCategory::find(1);
        $cats = explode(',', $category->sel_categories);
        $categories = Category::whereIn('id', $cats)->get();
        $no_of_products = $category->no_of_products;

        $side_categories = Category::all();

        $sproducts = Product::where('sale_price', '>', 0)->inRandomOrder()->get()->take(8);
        if(Auth::check())
        {
            Cart::instance('cart')->restore(Auth::user()->email);
            Cart::instance('wishlist')->restore(Auth::user()->email);
        }


        $fproducts = Product::where('featured', 1)->get();

        $sale = Sale::find(1);
        return view('livewire.home-component', ['popular_products' => $popular_products, 'lproducts' => $lproducts, 'categories' => $categories, 'no_of_products' => $no_of_products, 'sproducts' => $sproducts, 'side_categories'=>$side_categories, 'sale'=>$sale, 'fproducts'=>$fproducts])->layout("layouts.base");
        // return view('livewire.home-component', ['side_categories'=>$side_categories, 'fproducts'=>$fproducts, 'categories' => $categories, 'no_of_products' => $no_of_products])->layout("layouts.base");
        // 
    }
}
