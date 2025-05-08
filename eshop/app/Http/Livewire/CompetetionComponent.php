<?php

namespace App\Http\Livewire;

use App\Models\Competetions;
use Livewire\Component;
use Livewire\WithPagination;

class CompetetionComponent extends Component
{
    use WithPagination;
    public function render()
    {
        $competetions = Competetions::all();
        return view('livewire.competetion-component', ['competetions' => $competetions])->layout('layouts.base');
    }
}
