<?php

namespace App\Http\Livewire;

use App\Models\Blogs;
use Livewire\Component;
use Livewire\WithPagination;

class BlogComponent extends Component
{
    use WithPagination;
    public function render()
    {
        $blogs = Blogs::all();
        return view('livewire.blog-component', ['blogs'=>$blogs])->layout('layouts.base');
    }
}
