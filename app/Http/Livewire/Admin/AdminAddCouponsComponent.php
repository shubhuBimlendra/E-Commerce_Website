<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;

//Import
use App\Models\Coupon;

class AdminAddCouponsComponent extends Component
{
    //Property
    public $code;
    public $type;
    public $value;
    public $cart_value;

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

    //Create insert Function
    public function storeCoupon()
    {
        //validation
        $this->validate([
            'code' => 'required|unique:coupons',
            'type' => 'required',
            'value' => 'required|numeric',
            'cart_value' => 'required|numeric'
        ]);

        $coupon = new Coupon();
        $coupon->code = $this->code;
        $coupon->type = $this->type;
        $coupon->value = $this->value;
        $coupon->cart_value = $this->cart_value;
        $coupon->save();
        session()->flash('message', 'Coupon has been created successfully');
    }

    public function render()
    {
        return view('livewire.admin.admin-add-coupons-component')->layout('layouts.base');
    }
}
