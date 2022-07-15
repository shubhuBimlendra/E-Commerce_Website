<?php

namespace App\Http\Livewire;

use Livewire\Component;
//Import
use Cart;

class CartComponent extends Component
{
    //Creating function for increasing product
    public function increaseQuantity($rowId)
    {
        $product = Cart::instance('cart')->get($rowId);
        $qty = $product->qty + 1;
        Cart::instance('cart')->update($rowId,$qty);
    }

    // Creating function for Decreasing product
    public function decreaseQuantity($rowId)
    {
        $product = Cart::instance('cart')->get($rowId);
        $qty = $product->qty - 1;
        Cart::instance('cart')->update($rowId,$qty);
    }

    // Creating function to remove or delete product from the cart
    public function destroy($rowId)
    {
        Cart::instance('cart')->remove($rowId);
        session()->flash('success_message','Item has been removed');
    }

    //Creating a function clear all item from the cart
    public function destroyAll()
    {
        Cart::instance('cart')->destroy();
    }


    public function render()
    {
        return view('livewire.cart-component')->layout("layouts.base");
    }
}
