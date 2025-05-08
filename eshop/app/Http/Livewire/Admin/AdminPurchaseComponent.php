<?php

namespace App\Http\Livewire\Admin;

use App\Models\Purchase;
use Livewire\Component;
use Livewire\WithPagination;

class AdminPurchaseComponent extends Component
{
    use WithPagination;
    public $searchTerm;

    public function render()
    {
        // $products = Purchase::paginate(10);
        $search = '%' . $this->searchTerm . '%';
        $products = Purchase::where('name', 'LIKE', $search)
        ->orWhere('price', 'LIKE', $search)
        ->orderBy('voucher_no', 'DESC')->paginate(10);
        return view('livewire.admin.admin-purchase-component', ['products'=>$products])->layout('layouts.base');
    }
}
