<?php

namespace App\Http\Livewire;

use Livewire\Component;

//Import
use App\Models\HomeSlider;

class HomeComponent extends Component
{
    public function render()
    {
        //Function to make slide dynamically
        $sliders = HomeSlider::where('status',1)->get();

        return view('livewire.home-component',['sliders' => $sliders])->layout('layouts.base');
    }
}
