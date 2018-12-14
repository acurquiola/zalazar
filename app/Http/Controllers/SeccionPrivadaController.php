<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Familia;
use App\Metadato;
use App\Producto;
use App\Subfamilia;
use Darryldecode\Cart\Facades\CartFacade;
use Session;


class SeccionPrivadaController extends Controller
{
    public function index(){
    	$user = \Auth::user();

    	return view('page.privada.index', compact('user'));
    }

    public function cliente(Request $request, $id){
    	$request->session()->put('cliente_id', $id);
        $userId = $request->session()->get('cliente_id');

        \Cart::session($userId);

        $familias   = Familia::where('id', '>', '1')->orderBy('orden')->get();
        $seccion    = 'Productos';
        $metadato   = Metadato::where('seccion', $seccion)->first();

        return view('page.productos.index', compact('familias', 'seccion', 'metadato'));
    }

    public function store(Request $request){

        $producto = Producto::find($request->id);

        \Cart::add(array(
            'id' => $producto->id,
            'name' => $producto->descripcion,
            'price' => $producto->precio,
            'quantity' => $request->cantidad
        ));

        if(\Cart::getContent() != null){
            return response()->json(array("text"=>'Done!',"status"=>0));
        }else{
            return response()->json(array("text"=>'Error registrando el articulo',"status"=>1));

        }

    }

    public function remover(Request $request){
        if(\Cart::remove($request->id))
            return response()->json(array("text"=>'Done!',"status"=>0));
        else
            return response()->json(array("text"=>'Error!',"status"=>1));
    }

    public function pedido(){
        if(Session::has('cliente_id')){
            $userId = Session::get('cliente_id');
            $cart   = (\Cart::session($userId)->getContent()->count() > 0)?\Cart::session($userId)->getContent():'';
        }
        else
        {
            $cart = '';
            $request->session()->flush();
        }

        return view('page.privada.pedido.index', compact('cart'));
    }
}
