<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	\DB::table('users')->insert(array (
    		0 =>
    		array (
    			'id'       => 1,
    			'name'     => 'Osole Vendedor',
    			'username' => 'vendedor',
    			'email'    => 'vendedor@osole.es',
    			'tipo'     => 'vendedor',
    			'password' => bcrypt('osole'),
    		),
    		1 =>
    		array (
    			'id'       => 2,
    			'name'     => 'Osole Comprador',
    			'username' => 'comprador',
    			'email'    => 'comprador@osole.es',
    			'tipo'     => 'cliente',
    			'password' => bcrypt('osole'),
    		),
    	));
    }
}
