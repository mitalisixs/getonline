<?php

namespace App\Providers;

use Illuminate\Support\Facades\Route;
use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Artisan;


class RouteServiceProvider extends ServiceProvider
{
    /**
     * This namespace is applied to your controller routes.
     *
     * In addition, it is set as the URL generator's root namespace.
     *
     * @var string
     */
    protected $namespace = 'App\Http\Controllers';

    /**
     * Define your route model bindings, pattern filters, etc.
     *
     * @return void
     */
    public function boot()
    {
        //
     /*   Artisan::call('cache:clear');
        Artisan::call('route:clear');
            Artisan::call('view:clear');
             Artisan::call('config:clear');*/
    

        parent::boot();
    }

    /**
     * Define the routes for the application.
     *
     * @return void
     */
    public function map()
    {
        $this->mapApiRoutes();

        $this->mapWebRoutes();

        $this->mapAdminRoutes();

        $this->mapVendorRoutes();

        //
    }

    /**
     * Define the "web" routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     *
     * @return void
     */
    protected function mapWebRoutes()
    {
        Route::middleware('web')
             ->namespace($this->namespace)
             ->group(base_path('routes/web.php'));
    }

    /**
     * Define the "api" routes for the application.
     *
     * These routes are typically stateless.
     *
     * @return void
     */
    protected function mapApiRoutes()
    {
        Route::prefix('api')
             ->namespace($this->namespace)
             ->group(base_path('routes/api.php'));
    }
    /**
     * Define the "admin" routes for the application.
     *
     * These routes are typically stateless.
     *
     * @return void
     */

    protected function mapAdminRoutes()
    {
      Route::middleware('web')
           ->namespace($this->namespace)
           ->group(base_path('routes/admin.php'));
    }

	/**
     * Define the "vendor" routes for the application.
     *
     * These routes are typically stateless.
     *
     * @return void
     */

	protected function mapVendorRoutes()
    {
        Route::prefix('vendor')
             ->namespace($this->namespace)
             ->group(base_path('routes/vendor.php'));
    }
}
