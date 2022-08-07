<?php

namespace App\Http\Livewire;

use Livewire\Component;

//Import
use App\Models\Contact;

class ContactComponent extends Component
{
    //Create a variable
    public $name;
    public $email;
    public $phone;
    public $comment;

    //Create a lifecycle hook methods
    public function updated($fields)
    {
        $this->validateOnly($fields,[
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'comment' => 'required'
        ]);
    }

    //Create a function for sending message
    public function sendMessage()
    {
        $this->validate([
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'comment' => 'required'
        ]);

        $contact = new Contact();
        $contact->name = $this->name;
        $contact->email = $this->email;
        $contact->phone = $this->phone;
        $contact->comment = $this->comment;
        $contact->save();
        session()->flash('message','Thanks, your message has been sent successfully! our team will response you soon.');
    }

    public function render()
    {
        return view('livewire.contact-component')->layout("layouts.base");
    }
}
