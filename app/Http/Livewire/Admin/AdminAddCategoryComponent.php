<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;

//import
use Illuminate\Support\Str;
use App\Models\Category;
use App\Models\Subcategory;

class AdminAddCategoryComponent extends Component
{
    public $name;
    public $slug;
    public $category_id;

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
        if($this->category_id)
        {
            $category = new Subcategory();
            $category->name = $this->name;
            $category->slug = $this->slug;
            $category->category_id = $this->category_id;
            $category->save();
            session()->flash('message','Sub-Category has been created successfully');
        } else{
            $category = new Category();
            $category->name = $this->name;
            $category->slug = $this->slug;
            $category->save();
            session()->flash('message','Category has been created successfully');
        }
    }


    public function render()
    {
        $categories = Category::all();
        return view('livewire.admin.admin-add-category-component',['categories' => $categories])->layout('layouts.base');
    }
}
