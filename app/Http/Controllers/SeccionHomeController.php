<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Slider;

class SeccionHomeController extends Controller
{
    public function index()
    {
    	$sliders = Slider::where('seccion', 'home')->get();
    	return view('page.home.index', compact('sliders'));
    }
}
