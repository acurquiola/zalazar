<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Descarga;

class SeccionCatalogoController extends Controller
{
    public function index()
    {
		$descargas = Descarga::orderBy('orden')->get();
    	return view('page.catalogo.index', compact('descargas'));
    }
}
