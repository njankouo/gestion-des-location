<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tarification extends Model
{
    use HasFactory;
     public function dureelocation(){
 return $this->belongsTo(Duree_location::class,"dureelocation_Id","id");
    }

       public function article(){
 return $this->belongsTo(Article::class,"article_Id","id");
    }
}
