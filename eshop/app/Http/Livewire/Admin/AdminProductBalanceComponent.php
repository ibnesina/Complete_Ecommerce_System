<?php

namespace App\Http\Livewire\Admin;

use App\Models\Balance;
use Livewire\Component;
use App\Models\Purchase;
use Livewire\WithPagination;
use Illuminate\Support\Facades\DB;

class AdminProductBalanceComponent extends Component
{
    use WithPagination;
    public function render()
    {
        // $products = Purchase::groupBy('SKU')
        // ->select('name', 'SKU', DB::raw('SUM(price) as price'), DB::raw('SUM(quantity) as quantity'), 'category_id')
        // ->get();
        
        $products = Balance::all();

        return view('livewire.admin.admin-product-balance-component', ['products'=>$products])->layout('layouts.base');
    }
}
