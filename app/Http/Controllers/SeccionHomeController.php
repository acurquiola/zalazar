<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SeccionHomeController extends Controller
{
    public function index()
    {
    	return view('page.home.index');
    }
}
