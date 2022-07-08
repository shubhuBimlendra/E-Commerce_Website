<?php

namespace App\Http\Livewire;

use Livewire\Component;

//Import
use App\Models\HomeSlider;
use App\Models\Product;
use App\Models\HomeCategory;
use App\Models\Category;

class HomeComponent extends Component
{
    public function render()
    {
        //Function to make slide dynamically
        $sliders = HomeSlider::where('status',1)->get();

        //function to show latest product
        $products = Product::orderBy('created_at','DESC')->get()->take(8);

        //function to show product based upon category
        $category = HomeCategory::find(1);
        $cats = explode(',',$category->sel_categories);
        $categories = Category::whereIn('id',$cats)->get();
        $no_of_products = $category->no_of_products;

        //function to Make On Sale Carousel Dynamic
        $sproducts = Product::where('sale_price','>',0)->inRandomOrder()->get()->take(8);

        return view('livewire.home-component',['sliders' => $sliders,'products' => $products, 'categories'=>$categories,'no_of_products'=>$no_of_products,'sproducts'=>$sproducts])->layout('layouts.base');
    }
}
