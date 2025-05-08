<?php

namespace App\Http\Livewire\Admin;

use App\Models\Ledger;
use Livewire\Component;
use Livewire\WithPagination;

class AdminLedgerComponent extends Component
{
    use WithPagination;

    public function render()
    {
        $products = Ledger::all();
        return view('livewire.admin.admin-ledger-component', ['products'=>$products])->layout('layouts.base');
    }
}
