<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subfamilia extends Model
{
    protected $fillable = [
    	'nombre', 'orden', 'descripcion', 'file_image', 'file_ficha'
    ];

    public function familia()
    {
    	return $this->belongsTo('App\Familia');
    } 

    public function productos()
    {
    	return $this->hasMany('App\Producto');
    } 
    
    public function galerias()
    {
        return $this->hasMany('App\Galeria');
    }
}
