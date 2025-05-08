<?php

namespace App\Http\Livewire;

use App\Models\Blogs;
use Livewire\Component;

class BlogDetailsComponent extends Component
{
    public $slug;

    public function mount($slug)
    {
        $this->slug = $slug;
    }

    public function render()
    {
        $blogs = Blogs::where('slug', $this->slug)->first();
        return view('livewire.blog-details-component', ['blogs'=>$blogs])->layout('layouts.base');
    }
}
