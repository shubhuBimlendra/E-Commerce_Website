<?php

namespace App\Http\Livewire\User;

use Livewire\Component;

//Import
use Illuminate\Support\Facades\Hash;
use Auth;
use App\Models\User;

class UserChangePasswordComponent extends Component
{
    //Make a property
    public $current_password;
    public $password;
    public $password_confirmation;

    //Create a lifecycle hook methods
    public function updated($fields)
    {
        $this->validateOnly($fields,[
            'current_password'=>'required',
            'password'=> 'required|min:8|confirmed|different:current_password',
        ]);
    }

    //Create a function to change Password
    public function changePassword()
    {
        $this->validate([
            'current_password'=>'required',
            'password'=> 'required|min:8|confirmed|different:current_password',

        ]);

        if(Hash::check($this->current_password,Auth::user()->password))
        {
            $user = User::findorFail(Auth::user()->id);
            $user->password = Hash::make($this->password);
            $user->save();
            session()->flash('password_success','password has been changed successfully');
        }
        else
        {
            session()->flash('password_error','password does not match!');
        }
    }

    public function render()
    {
        return view('livewire.user.user-change-password-component')->layout('layouts.base');
    }
}
