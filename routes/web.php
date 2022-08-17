<?php

use Illuminate\Support\Facades\Route;
//Import HomeComponent Livewire
use App\Http\Livewire\HomeComponent;
use App\Http\Livewire\ShopComponent;
use App\Http\Livewire\CartComponent;
use App\Http\Livewire\CheckoutComponent;
use App\Http\Livewire\User\UserDashboardComponent;
use App\Http\Livewire\Admin\AdminDashboardComponent;
use App\Http\Livewire\DetailsComponent;
use App\Http\Livewire\CategoryComponent;
use App\Http\Livewire\SearchComponent;
use App\Http\Livewire\Admin\AdminCategoryComponent;
use App\Http\Livewire\Admin\AdminAddCategoryComponent;
use App\Http\Livewire\Admin\AdminEditCategoryComponent;
use App\Http\Livewire\Admin\AdminProductComponent;
use App\Http\Livewire\Admin\AdminAddProductComponent;
use App\Http\Livewire\Admin\AdminEditProductComponent;
use App\Http\Livewire\Admin\AdminHomeSliderComponent;
use App\Http\Livewire\Admin\AdminAddHomeSliderComponent;
use App\Http\Livewire\Admin\AdminEditHomeSliderComponent;
use App\Http\Livewire\Admin\AdminHomeCategoryComponent;
use App\Http\Livewire\Admin\AdminSaleComponent;
use App\Http\Livewire\WishlistComponent;
use App\Http\Livewire\Admin\AdminCouponsComponent;
use App\Http\Livewire\Admin\AdminAddCouponsComponent;
use App\Http\Livewire\Admin\AdminEditCouponsComponent;
use App\Http\Livewire\ThankyouComponent;
use App\Http\Livewire\User\UserChangePasswordComponent;
use App\Http\Livewire\ContactComponent;
use App\Http\Livewire\Admin\AdminContactComponent;
use App\Http\Livewire\Admin\AdminSettingComponent;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('welcome');
});*/

Route::get('/',HomeComponent::class);

Route::get('/shop',ShopComponent::class);

Route::get('/cart',CartComponent::class)->name('product.cart');

Route::get('/checkout',CheckoutComponent::class)->name('checkout');

//Route For Product Details Page
Route::get('/product/{slug}',DetailsComponent::class)->name('product.details');

//Route for category component
Route::get('/product-category/{category_slug}/{scategory_slug?}',CategoryComponent::class)->name('product.category');

//Route for search component
Route::get('/search',SearchComponent::class)->name('product.search');

//Route for Show All Wishlisted Products
Route::get('/wishlist',WishlistComponent::class)->name('product.wishlist');

//Route for thank you page
Route::get('/thanky-ou',ThankyouComponent::class)->name('thankyou');

//Route for contact page
Route::get('/contact-us',ContactComponent::class)->name('contact');

/*Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});*/

//for User or Customer
/*Route::middleware(['auth:sanctum','verified'])->group(function(){
    Route::get('/user/dashboard',[UserDashboardComponent::class])->name('user.dashboard');
});*/

//For Admin
/*Route::middleware(['auth:sanctum','verified','authadmin'])->group(function(){
    Route::get('/admin/dashboard',[AdminDashboardComponent::class])->name('admin.dashboard');
});*/

// For User or Customer
Route::middleware(['auth:sanctum', 'verified'])->group(function(){
    Route::get('user/dashboard',UserDashboardComponent::class,)->name('user.dashboard');
    Route::get('user/change-password',UserChangePasswordComponent::class)->name('user.changepassword');
});

// For Admin
Route::middleware(['auth:sanctum', 'verified','authadmin'])->group(function(){
    Route::get('admin/dashboard',AdminDashboardComponent::class,)->name('admin.dashboard');
    Route::get('/admin/categories',AdminCategoryComponent::class)->name('admin.categories');
    Route::get('admin/category/add',AdminAddCategoryComponent::class)->name('admin.addcategory');
    Route::get('/admin/category/edit/{category_slug}/{scategory_slug?}',AdminEditCategoryComponent::class)->name('admin.editcategory');
    Route::get('/admin/products',AdminProductComponent::class)->name('admin.products');
    Route::get('admin/product/add',AdminAddProductComponent::class)->name('admin.addproduct');
    Route::get('admin/product/edit/{product_slug}',AdminEditProductComponent::class)->name('admin.editproduct');

    Route::get('admin/slider',AdminHomeSliderComponent::class)->name('admin.homeslider');
    Route::get('admin/slider/add',AdminAddHomeSliderComponent::class)->name('admin.addhomeslider');
    Route::get('admin/slider/edit/{slide_id}',AdminEditHomeSliderComponent::class)->name('admin.edithomeslider');

    Route::get('/admin/home-categories',AdminHomeCategoryComponent::class)->name('admin.homecategories');
    Route::get('admin/sale',AdminSaleComponent::class)->name('admin.sale');

    Route::get('/admin/coupons',AdminCouponsComponent::class)->name('admin.coupons');
    Route::get('/admin/coupons/add',AdminAddCouponsComponent::class)->name('admin.addcoupon');
    Route::get('/admin/coupons/edit/{coupon_id}',AdminEditCouponsComponent::class)->name('admin.editcoupon');

    Route::get('/admin/contact-us',AdminContactComponent::class)->name('admin.contact');

    Route::get('/admin/settings',AdminSettingComponent::class)->name('admin.settings');
});


