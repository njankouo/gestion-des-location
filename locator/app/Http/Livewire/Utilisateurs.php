<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Hash;
class Utilisateurs extends Component
{
 

     public $isBtnAddClicked=false;
    public function goToAddUser(){
        $this->isBtnAddClicked = true;
    }
    public $newUser=[];
    public function render()
    {
         return view('livewire.utilisateurs.index', [
            "users" => User::paginate(4)
        ])
        ->extends("layouts.master")
        ->section("contenu");
    }

protected $rules=[

'newUser.nom'=>'required',
'newUser.prenom'=>'required',
'newUser.sexe'=>'required',
'newUser.email'=>'required|email',
'newUser.telephone1'=>'required|number',
'newUser.telephone2'=>'required|number',
'newUser.pieceidentite'=>'required',
'newUser.numeropieceidentite'=>'required',
];


    public function addUser(){
       // dump($this->newUser);
        $this->validate();
    }
}
