<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    use HasFactory;
    protected $table="articles";
    public function type(){
return $this->belongsTo(TypeArticle::class,"type_article_Id","id");

    } 

    public function tarifications(){
return $this->hasMany(Tarification::class);

    }

     public function locations(){
return $this->belongsToMany(Location::class,"articles_locations","article_Id","location_Id");

     }  

         public function proprietes(){
return $this->belongsToMany(ProprieteArticle::class,"articles_proprietes","article_Id","propriete_article_Id");

     }  

}
