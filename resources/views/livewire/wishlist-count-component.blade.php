<div class="wrap-icon-section wishlist">
	<a href="#" class="link-direction">
		<i class="fa fa-heart" aria-hidden="true"></i>
		<div class="left-info">
            @if(Cart::instance('wishlist')->count() > 0)
                <span class="index">{{Cart::instance('wishlist')->count()}}</span>
                <span class="title">Wishlist</span>
            @endif
		</div>
	</a>
</div>
