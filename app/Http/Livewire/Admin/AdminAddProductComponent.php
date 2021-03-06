<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;

//Import
use App\Models\Category;
use Illuminate\Support\Str;
use App\Models\Product;
use Illuminate\Support\Carbon;
use Livewire\withFileUploads;

class AdminAddProductComponent extends Component
{
    use withFileUploads;
    //Create a properties
    public $name;
    public $slug;
    public $short_description;
    public $description;
    public $regular_price;
    public $sale_price;
    public $SKU;
    public $stock_status;
    public $featured;
    public $quantity;
    public $image;
    public $category_id;

    //LifeCycle Hook Method
    public function mount()
    {
        $this->stock_status = 'instock';
        $this->featured = 0;
    }

    //Function to generate slug
    public function generatSlug()
    {
        $this->slug = Str::slug($this->name,'-');
    }

    //Create a life cycle hook method for validation
    public function updated($fields)
    {
        $this->validateOnly($fields,[
            'name' => 'required',
            'slug' => 'required|unique:products',
            'short_description' => 'required',
            'description' => 'required',
            'regular_price' => 'required|numeric',
            'sale_price' => 'numeric',
            'SKU' => 'required',
            'stock_status' => 'required',
            'quantity' => 'required|numeric',
            'image' => 'required|mimes:jpeg,png',
            'category_id' => 'required'
        ]);
    }

    //Function for add product
    public function addProduct()
    {
        //validation
        $this->validate([
            'name' => 'required',
            'slug' => 'required|unique:products',
            'short_description' => 'required',
            'description' => 'required',
            'regular_price' => 'required|numeric',
            'sale_price' => 'numeric',
            'SKU' => 'required',
            'stock_status' => 'required',
            'quantity' => 'required|numeric',
            'image' => 'required|mimes:jpeg,png',
            'category_id' => 'required'
        ]);

        $product = new Product();
        $product->name = $this->name;
        $product->slug = $this->slug;
        $product->short_description = $this->short_description;
        $product->description = $this->description;
        $product->regular_price = $this->regular_price;
        $product->sale_price = $this->sale_price;
        $product->SKU = $this->SKU;
        $product->stock_status = $this->stock_status;
        $product->featured= $this->featured;
        $product->quantity = $this->quantity;
        $imageName = Carbon::now()->timestamp. '-' . $this->image->extension();
        $this->image->storeAs('products',$imageName);
        $product->image = $imageName;
        $product->category_id = $this->category_id;
        $product->save();
        session()->flash('message','Product has been created successfully!');
    }

    public function render()
    {
        //Fetch All Categories
        $categories = Category::all();
        return view('livewire.admin.admin-add-product-component',['categories' => $categories])->layout('layouts.base');
    }
}
