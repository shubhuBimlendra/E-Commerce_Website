<?php

namespace App\Http\Livewire;

use Livewire\Component;

//Import
use App\Models\Setting;

class FooterComponent extends Component
{
    public function render()
    {
        $setting = Setting::find(9);
        return view('livewire.footer-component',['setting'=>$setting]);
    }
}
