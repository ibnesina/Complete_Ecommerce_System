<?php

namespace App\Http\Livewire;

use App\Models\Competetions;
use Livewire\Component;

class CompetetionDetailsComponent extends Component
{
    public $slug;

    public function mount($slug)
    {
        $this->slug = $slug;
    }

    public function render()
    {
        $competetions = Competetions::where('slug', $this->slug)->first();
        return view('livewire.competetion-details-component', ['competetions'=>$competetions])->layout('layouts.base');
    }
}
