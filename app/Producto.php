<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    protected $fillable = [
        'orden', 'descripcion', 'codigo', 'presentacion', 'precio', 'familia_id', 'subfamilia_id'
    ];

    public function familia()
    {
    	return $this->belongsTo('App\Familia');
    }   

    public function subfamilia()
    {
    	return $this->belongsTo('App\Subfamilia');
    }   

}