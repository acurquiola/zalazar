<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Descuento;

class DescuentoController extends Controller
{
    public function index()
    {
    	$descuentos = Descuento::where('id', '>', '1')->get();
    	return view('adm.descuentos.index', compact('descuentos'));
    }

    public function edit($id)
    {
    	$descuento = Descuento::find($id);
    	return view('adm.descuentos.edit', compact('descuento'));
    }

    public function update(Request $request, $id)
    {
    	$descuento = Descuento::find($id);
    	$descuento->monto = $request->monto;

    	$descuento->save();

    	$descuentos = Descuento::all();

    	return view('adm.descuentos.index', compact('descuentos'));
    }
}
