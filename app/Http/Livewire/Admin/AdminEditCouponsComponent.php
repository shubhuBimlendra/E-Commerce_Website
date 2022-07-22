<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;

//Import
use App\Models\Coupon;

class AdminEditCouponsComponent extends Component
{

    //Property
    public $code;
    public $type;
    public $value;
    public $cart_value;
    public $coupon_id;

    //Create a lifecycle hook methods to fetch data
    public function mount($coupon_id)
    {
        $coupon = Coupon::find($coupon_id);
        $this->code = $coupon->code;
        $this->type = $coupon->type;
        $this->value = $coupon->value;
        $this->cart_value = $coupon->cart_value;
    }

    //Create a lifecycle hook methods
    public function updated($fields)
    {
        $this->validateOnly($fields,[
            'code' => 'required|unique:coupons',
            'type' => 'required',
            'value' => 'required|numeric',
            'cart_value' => 'required|numeric'
        ]);
    }

    //Create Update Function
    public function updateCoupon()
    {
        //validation
        $this->validate([
            'code' => 'required|unique:coupons',
            'type' => 'required',
            'value' => 'required|numeric',
            'cart_value' => 'required|numeric'
        ]);

        $coupon = Coupon::find($this->coupon_id);
        $coupon->code = $this->code;
        $coupon->type = $this->type;
        $coupon->value = $this->value;
        $coupon->cart_value = $this->cart_value;
        $coupon->save();
        session()->flash('message', 'Coupon has been Updated successfully');
    }

    public function render()
    {
        return view('livewire.admin.admin-edit-coupons-component')->layout('layouts.base');
    }
}
