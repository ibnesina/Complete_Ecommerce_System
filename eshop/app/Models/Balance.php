<?php

namespace App\Models;

use App\Models\Category;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Balance extends Model
{
    use HasFactory;

    protected $table = "balances";

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }
}
