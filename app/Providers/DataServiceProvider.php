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
