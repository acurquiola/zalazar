<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class DataServiceProvider extends ServiceProvider
{
/**
 * Bootstrap services.
 *
 * @return void
 */
public function boot()
{
    view()->composer(['adm.layouts.sidebar', 
                      'adm.auth.login',
                      'adm.layouts.navbar',
                      'layouts.navbar'
                    ], function ($view) {
            $logos = \App\Logo::where('ubicacion', 'navbar')->first();
            $view->with(compact('logos'));
        });

    view()->composer(['layouts.footer', 
                      'layouts.navbar'], function ($view) {
            $email     = \App\Dato::where('tipo', 'email')->first();
            $telefono  = \App\Dato::where('tipo', 'telefono')->first();
            $telefono  = \App\Dato::where('tipo', 'telefono_fax')->first();
            $whatsapp  = \App\Dato::where('tipo', 'whatsapp')->first();

            $view->with(compact('email', 'telefono','telefono_fax', 'whatsapp'));
        });
}




/**
 * Register services.
 *
 * @return void
 */
public function register()
{
    //
}
}
