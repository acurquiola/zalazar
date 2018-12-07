<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($tipo)
    {
        $usuarios = User::where('tipo', $tipo)->paginate(7);
        return view('adm.usuarios.index', ['usuarios' => $usuarios]);
    }

    public function create($tipo)
    {
        $tipos = ['vendedor' => 'Vendedor', 'cliente' => 'Cliente'];
        return view('adm.usuarios.create' , compact('tipo', 'tipos'));
    }

    public function store(Request $request)
    {

        $user = new User ($request->all());
        $user->password = bcrypt($request->password);
        
        $user->tipo     = $request->tipo;

        if($user->save())
             return redirect()->back()->with('alert', "Usuario registrado exitósamente" );
        else
             return redirect()->back()->with('errors', "Ocurrió un error al intentar almacenar el registro" );
    }

    public function edit($tipo, $id){
        $user = User::find($id);
        $tipo = ['vendedor' => 'Vendedor', 'cliente' => 'Cliente'];
        return view('adm.usuarios.edit', ['user' => $user, 'tipo' => $tipo]);
    }

    public function update(Request $request, $tipo, $id){
        $user  = User::find($id);
        $user->fill($request->all());

        $user->tipo     = $request->tipo;
        $user->password = bcrypt($request->password);

        if($user->save())
            return redirect()->back()->with('alert', "Usuario actualizado exitósamente" );
        else
            return redirect()->back()->with('errors', "Ocurrió un error al intentar actualizar el registro" );
    }

    public function eliminar($tipo, $id){
        $user = User::find($id);

        if($user->delete())
            return redirect()->back()->with('alert', "Usuario eliminado exitósamente" );
        else
            return redirect()->back()->with('errors', "Ocurrió un error al intentar eliminar el registro" );
    }

}
