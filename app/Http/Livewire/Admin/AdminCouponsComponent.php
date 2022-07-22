<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;

//Import
use App\Models\Coupon;
use Livewire\WithPagination;

class AdminCouponsComponent extends Component
{
    use WithPagination;
    //Create a delete coupon function
    public function deleteCoupon($coupon_id)
    {
        $coupon = Coupon::find($coupon_id);
        $coupon->delete();
        session()->flash('message', 'Coupon has been deleted successfully');
    }

    public function render()
    {
        $coupons = Coupon::paginate(5);
        return view('livewire.admin.admin-coupons-component',['coupons'=>$coupons])->layout('layouts.base');
    }
}
