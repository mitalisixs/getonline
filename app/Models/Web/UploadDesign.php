<?php

namespace App\Models\Web;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class UploadDesign extends Model
{

    public function getter(){
      $currencies = DB::table('upload_your_design')->orderby('id','DESC')->get();
      return $currencies;
    }
    public function insert($data){
      $customers_id = DB::table('upload_your_design')->insertGetId($data);
    }

}
