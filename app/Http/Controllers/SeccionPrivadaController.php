<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Familia;
use App\Metadato;
use App\Producto;
use App\Subfamilia;
use App\Descuento;
use App\Pedido;
use App\User;
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
            'id'       => $producto->id,
            'name'     => $producto->descripcion,
            'price'    => $producto->precio,
            'quantity' => $request->cantidad,
            'attributes' => array(
                'image'     => $producto->subfamilia->file_image,
                'codigo'    => $producto->codigo,
                'categoria' => $producto->subfamilia->nombre,
            )
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
        $tipo = \Auth::user()->tipo;
        $descuento = Descuento::where('tipo', $tipo)->first();

        if($tipo == 'vendedor'){
            if(Session::has('cliente_id')){
                $userId = Session::get('cliente_id');
                $cart   = (\Cart::getContent()->count() > 0)?\Cart::getContent():'';
            }
            else
            {
                $cart = '';
                Session::flush();
            }
        }else{
            $userId = \Auth::user()->id;
            $cart   = (\Cart::getContent()->count() > 0)?\Cart::getContent():'';
        }

        return view('page.privada.pedido.index', compact('cart', 'descuento'));
    }

    public function confirmar(Request $request){

        $cart = \Cart::getContent();

        if(\Auth::user()->tipo == 'vendedor'){
            $comprador = User::find(Session::get('cliente_id'));
            $vendedor  = \Auth::user();

        }else{
            $comprador = \Auth::user();
            $vendedor  = User::find('1');
        }
        
        $pedido    = Pedido::where('comprador_id', $comprador->id)->where('status', 0)->first();

        if(!$pedido){
            $pedido               = New Pedido;
        }

        $pedido->comprador_id = $comprador->id;
        $pedido->vendedor_id  = $vendedor->id;
        $pedido->monto_total  = $request->monto;
        $pedido->status       = 0;
        $pedido->save();

        foreach ($cart as $c) {
            $producto_id = Producto::find($c->id);
            //$pedido      = $pedido->articulos()->save($producto_id, ['cantidad' => $c->quantity]);
            $pedidos =  \DB::table('pedido_producto')->insert(
                 ['producto_id' => $producto_id->id, 
                 'pedido_id'    => $pedido->id,
                 'cantidad' => $c->quantity]
            );
        }       

        \Cart::clear();
        $request->session()->forget('cliente_id');

        return response()->json(array("text"=>'Done!',"status"=>0));     

    }
}
