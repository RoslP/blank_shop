<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $guarded =false;
    public function category()
    {
        return $this->belongsToMany(Category::class,'category_product','product_id','category_id');
    }
    public function images()
    {
        return $this->hasMany(Image::class);
    }
}
