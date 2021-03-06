<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;

//import
use Illuminate\Support\Str;
use App\Models\Category;

class AdminAddCategoryComponent extends Component
{
    public $name;
    public $slug;

    //Create a function for generating slug
    public function generateslug()
    {
        $this->slug = Str::slug($this->name);
    }

    //Create a life cycle hook method for validation
    public function updated($fields)
    {
        $this->validateOnly($fields,[
            'name'=>"required",
            'slug'=>'required|unique:categories'
        ]);
    }

    //Create a function for Storing the category
    public function storeCategory()
    {
        //Vallidation
        $this->validate([
            'name'=>"required",
            'slug'=>'required|unique:categories'
        ]);

        $category = new Category();
        $category->name = $this->name;
        $category->slug = $this->slug;
        $category->save();
        session()->flash('message','Category has been created successfully');
    }


    public function render()
    {
        return view('livewire.admin.admin-add-category-component')->layout('layouts.base');
    }
}
