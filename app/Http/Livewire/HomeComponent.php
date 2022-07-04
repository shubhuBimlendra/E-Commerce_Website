<?php

namespace App\Http\Livewire;

use Livewire\Component;

//Import
use App\Models\HomeSlider;
use App\Models\Product;

class HomeComponent extends Component
{
    public function render()
    {
        //Function to make slide dynamically
        $sliders = HomeSlider::where('status',1)->get();

        //function to show latest product
        $products = Product::orderBy('created_at','DESC')->get()->take(8);

        return view('livewire.home-component',['sliders' => $sliders,'products' => $products])->layout('layouts.base');
    }
}
