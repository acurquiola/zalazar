<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'username', 'email', 'password', 'tipo','parent_id',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];


    public function clientes()
    {
        return $this->hasMany('App\User', 'parent_id');
    }

    public function pedidos()
    {
        return $this->hasMany('App\Pedido');
    }

    public function descuento()
    {
        return $this->belongsTo('App\Descuento');
    }
    
}