<?php

use Illuminate\Database\Seeder;

class DescuentosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	\DB::table('descuentos')->insert(array (
    		0 =>
    		array (
				'id'   => 1,
				'tipo' => 'Cliente',
				'monto'=> '10',
    		),
    		1 =>
    		array (
				'id'   => 2,
				'tipo' => 'Vendedor',
				'monto'=> '20',
    		),
    	));

    }
}
