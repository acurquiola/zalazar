<?php

namespace App\Imports;

use App\Producto;
use App\Familia;
use App\Subfamilia;
use Maatwebsite\Excel\Concerns\ToModel;

class ProductosImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        $familia      = trim($row[0]);
        $subfamilia   = trim($row[1]);
        $codigo       = trim($row[2]);
        $descripcion  = trim($row[3]);
        $presentacion = trim($row[4]);
        $precio       = trim($row[5]);

        if($familia != "Familia" && $subfamilia != "Subfamilia" && $codigo != "Código" && $descripcion != 'Denominación' && $presentacion != 'Presentación' && $precio != 'Precio'){
            $producto = Producto::where('codigo', $codigo)->first();
            if(!$producto){
                $f = Familia::where('nombre', 'like', $familia)->first();
                $s = Subfamilia::where('nombre', 'like', $subfamilia)->first();
                $familia_id    = $f->id;
                $subfamilia_id = $s->id;

                return new Producto([
                    'codigo'        => $codigo,
                    'descripcion'   => $descripcion,
                    'presentacion'  => $presentacion,
                    'precio'        => $precio,
                    'familia_id'    => $familia_id,
                    'subfamilia_id' => $subfamilia_id,
                ]);
            }else{

                $familia    = Familia::where('nombre', $row[0])->first();
                $subfamilia = Subfamilia::where('nombre', $row[1])->first();

                $producto->codigo        = $codigo;
                $producto->descripcion   = $descripcion;
                $producto->presentacion  = $presentacion;
                $producto->precio        = $precio;
                $producto->familia_id    = $familia->id;
                $producto->subfamilia_id = $subfamilia->id;

                return $producto;

            }
        }
    }
}
