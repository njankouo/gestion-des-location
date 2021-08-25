<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    use HasFactory;
    public function user(){

        return $this->belongsTo(User::class,"user_Id","id");
    }
     public function client(){

        return $this->belongsTo(Client::class,"client_Id","id");
    }
     public function statut(){

        return $this->belongsTo(Status_location::class,"status_location_Id","id");
    }

    public function paiements(){
 return $this->hasMany(Paiement::class);
    }


     public function articles(){
return $this->belongsToMany(Article::class,"articles_locations","location_Id","article_Id");

     } 
}
