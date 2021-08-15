<?php

namespace App\Http\Middleware\product;

use Closure;
use DB;
use Auth;

class add_product
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
   //   dd( $request->route()->uri);      
      $check =  DB::table('manage_role')
                 ->where('user_types_id',Auth()->user()->role_id)
                 ->where('products_create',1)
                 ->first();
        if($check == null){
          return  redirect('not_allowed');
        }else{
          if($request->route()->uri == "admin/products/add"){
            $products =  DB::table('products')->count();
            $package = env('VARIABLE_NAME');
            $num_of_products=0;
            if($package== "GOLD"){
              $num_of_products=200;
            }elseif($package=="SILVER"){
              $num_of_products=100;
            }
            if($num_of_products>0 && $products = $num_of_products){
              return  redirect('product_exceed');
            }
            
          }
          return $next($request);
        }
    }
}
