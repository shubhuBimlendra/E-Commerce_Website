<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;

//Import
use App\Models\HomeSlider;
use Carbon\Carbon;
use Livewire\WithFileUploads;

class AdminAddHomeSliderComponent extends Component
{
    use WithFileUploads;
    //Creating properties
    public $title;
    public $subtitle;
    public $price;
    public $link;
    public $image;
    public $status;

    //Creating lifecycle hook methods
    public function mount()
    {
        $this->status = 0;
    }

    //Create a function for adding slide
    public function addSlide()
    {
        $slider = new HomeSlider();
        $slider->title = $this->title;
        $slider->subtitle = $this->subtitle;
        $slider->price = $this->price;
        $slider->link = $this->link;
        $imagename = Carbon::now()->timestamp. '.' . $this->image->extension();
        $this->image->storeAs('sliders',$imagename);
        $slider->image = $imagename;
        $slider->status = $this->status;
        $slider->save();
        session()->flash('message','Slide has been created successfully');
    }

    public function render()
    {
        return view('livewire.admin.admin-add-home-slider-component')->layout('layouts.base');
    }
}
