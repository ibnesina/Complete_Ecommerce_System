<?php

namespace App\Http\Livewire\Admin;

use App\Models\Category;
use App\Models\Subcategory;
use App\Models\Product;
use Livewire\Component;
use Illuminate\Support\Str;
use Carbon\Carbon;
use Livewire\WithFileUploads;

class AdminEditProductComponent extends Component
{
    use WithFileUploads;
    public $name;
    public $slug;
    public $short_description;
    public $description;
    public $regular_price;
    public $sale_price;
    public $SKU;
    public $stock_status;
    public $featured;
    public $quantity;
    public $image;
    public $category_id;
    public $newimage;
    public $product_id;
    public $scategory_id;

    // public function updated($fields)
    // {
    //     $this->validateOnly($fields, [
    //         'name' => 'required',
    //         'slug' => 'required|unique:products',
    //         'short_description' => 'required',
    //         'description' => 'required',
    //         'regular_price' => 'required|numeric',
    //         'sale_price' => 'numeric',
    //         'SKU' => 'required',
    //         'stock_status' => 'required',
    //         'quantity' => 'required|numeric',
    //         'newimage' => 'required|mimes:jpeg,png,jpg',
    //         'category_id' => 'required'
    //     ]);
    // }

    public function mount($product_slug)
    {
        // $this->validate([
        //     'name' => 'required',
        //     'slug' => 'required|unique:products',
        //     'short_description' => 'required',
        //     'description' => 'required',
        //     'regular_price' => 'required|numeric',
        //     'sale_price' => 'numeric',
        //     'SKU' => 'required',
        //     'stock_status' => 'required',
        //     'quantity' => 'required|numeric',
        //     'newimage' => 'required|mimes:jpeg,png,jpg',
        //     'category_id' => 'required'
        // ]);

        $product = Product::where('slug', $product_slug)->first();

        $this->name = $product->name;
        $this->slug = $product->slug;
        $this->short_description = $product->short_description;
        $this->description = $product->description;
        $this->regular_price = $product->regular_price;
        $this->sale_price = $product->sale_price;
        $this->SKU = $product->SKU;
        $this->stock_status = $product->stock_status;
        $this->featured = $product->featured;
        $this->quantity = $product->quantity;
        $this->image = $product->image;
        $this->category_id = $product->category_id;
        $this->newimage = $product->newimage;
        $this->product_id = $product->id;
        $this->scategory_id = $product->subcategory_id;
    }

    public function generateSlug()
    {
        $this->slug = Str::slug($this->name, '-');
    }

    public function updateProduct()
    {
        $product = Product::find($this->product_id);
        $product->name = $this->name;
        $product->slug = $this->slug;
        $product->short_description = $this->short_description;
        $product->description = $this->description;
        $product->regular_price = $this->regular_price;
        $product->sale_price = $this->sale_price;
        $product->SKU = $this->SKU;
        $product->stock_status = $this->stock_status;
        $product->featured = $this->featured;
        $product->quantity = $this->quantity;
        if($this->newimage)
        {
            $imageName = Carbon::now()->timestamp . '.' . $this->newimage->extension();
            $this->newimage->storeAs('product_image', $imageName);
            $product->image = $imageName;
        }   
        
        $product->category_id = $this->category_id;
        if($this->scategory_id)
        {
            $product->subcategory_id = $this->scategory_id;
        }
        $product->save();
        session()->flash('message', 'Product has been Updated Successfully');
    }

    public function changeSubcategory()
    {
        $this->scategory_id = 0;
    }

    public function render()
    {
        $categories = Category::all();
        $scategories = Subcategory::where('category_id',$this->category_id)->get();   
        return view('livewire.admin.admin-edit-product-component', ['categories'=>$categories,'scategories'=>$scategories])->layout('layouts.base');
    }
}
