<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;

//Import
use App\Models\Product;
use Livewire\withPagination;

class AdminProductComponent extends Component
{
    use withPagination;
    public function render()
    {
        $products = Product::paginate(10);
        return view('livewire.admin.admin-product-component',['products'=>$products])->layout('layouts.base');
    }
}
