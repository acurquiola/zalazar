<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Galeria extends Model
{
    protected $fillable = [
    	'orden', 'file_image'
    ];


	public function subfamilia()
	{
		return $this->belongsTo('App\Subfamilia');
	}
}
