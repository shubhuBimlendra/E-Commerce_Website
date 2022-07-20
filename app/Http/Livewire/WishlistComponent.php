<?php

namespace App\Http\Livewire;

use Livewire\Component;

//Import
use Cart;

class WishlistComponent extends Component
{
    //Remove product from wishlist
    public function removeFromWishlist($product_id)
    {
        foreach(Cart::instance('wishlist')->content() as $witems )
        {
            if($witems->id == $product_id)
            {
                Cart::instance('wishlist')->remove($witems->rowId);
                $this->emitTo('wishlist-count-component','refreshComponent');
                return;
            }
        }
    }

    //Create a function to move product from wishlist to cart
    public function moveProductFromWishlistToCart($rowId)
    {
        $item = Cart::instance('wishlist')->get($rowId);
        Cart::instance('wishlist')->remove($rowId);
        Cart::instance('cart')->add($item->id,$item->name,1,$item->price)->associate('App\Models\Product');
        $this->emitTo('wishlist-count-component','refreshComponent');
        $this->emitTo('cart-count-component','refreshComponent');
    }

    public function render()
    {
        return view('livewire.wishlist-component')->layout("layouts.base");
    }
}
