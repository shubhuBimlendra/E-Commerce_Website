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

    public function render()
    {
        return view('livewire.wishlist-component')->layout("layouts.base");
    }
}
