<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;

//Import
use App\Models\Sale;

class AdminSaleComponent extends Component
{
    //Create a property
    public $sale_date;
    public $status;

    //Create a lifecycle hook methods
    public function mount()
    {
        $sale = Sale::find(1);
        $this->sale_date = $sale->sale_date;
        $this->status = $sale->status;
    }

    //Function for updating
    public function updateSale()
    {
        $sale = Sale::find(1);
        $sale->sale_date = $this->sale_date;
        $sale->status = $this->status;
        $sale->save();
        session()->flash('message','Record has been updated successfully.');
    }


    public function render()
    {
        return view('livewire.admin.admin-sale-component')->layout('layouts.base');
    }
}
