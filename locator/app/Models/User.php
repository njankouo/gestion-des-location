<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Facades\Gate;
use Illuminate\Notifications\Notifiable;
use App\Models\Roles;
class User extends Authenticatable
{
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $table="users";
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    public function paiements(){
    return $this->hasMany(Paiement::class);
    }
      public function roles(){
return $this->belongsToMany(Role::class,"users_roles","user_Id","role_Id");

     }  
       public function permissions(){
return $this->belongsToMany(Permission::class,"users_permissions","user_Id","permission_Id");

     } 

     /* cette fonction recupere le role entree par lutilisateur et le teste dans la bd  si ce qui a ete passe en parametre est null alors ca noous renvoit faulse sinon ca nous ouvre ces fonctionalites sollicites */
      public function hasRole($role){
        return $this->roles()->where("nom",$role)->first()!==null;
     } 

public function hasAnyRole($roles){
        return $this->roles()->whereIn("nom",$roles)->first()!==null;
   /*cette function verifie si un utilisateur a plusieurs role a la fois*/
}
}