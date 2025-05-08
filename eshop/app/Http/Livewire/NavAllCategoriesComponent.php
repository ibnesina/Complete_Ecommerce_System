<?php

namespace App\Http\Livewire;

use App\Models\Category;
use Livewire\Component;

class NavAllCategoriesComponent extends Component
{
    public function render()
    {
        $categories = Category::all();
        return view('livewire.nav-all-categories-component', ['categories' => $categories]);
    }
}
