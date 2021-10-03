<?php

namespace App\Models\Core;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Kyslik\ColumnSortable\Sortable;
use App\Http\Controllers\AdminControllers\SiteSettingController;

class Pincode extends Model
{
    //
    use Sortable;

    public $sortable =['id','created_at'];
    public $sortableAs =['pincode'];
    
    public function paginator(){
      $setting = new Setting();
      $myVarsetting = new SiteSettingController($setting);
      $commonsetting = $myVarsetting->commonsetting();
      $pincodes = Pincode::sortable(['id'=>'ASC'])->paginate($commonsetting['pagination']);
      return $pincodes;
    }

    public function getter(){
      $pincodes = DB::table('pincodes')->get();
       return $pincodes;
    }

    public function getDefaultPincode(){
      $pincodes = DB::table('pincodes')
                      ->where('is_default', 1)
                      ->first();

       return $pincodes;
    }

    public function checkexist($request){
      $pincodes = DB::table('pincodes')
                      ->where('pincode', $request->pincode)
                      ->first();

       return $pincodes;
    }

    public function checkexistPincode($pincode){
      $pincodes = DB::table('pincodes')
                      ->where('pincode', $pincode)
                      ->first();

       return $pincodes;
    }

    public function checkexistupdate($request){
      $pincodes = DB::table('pincodes')
                      ->where('id', '!=', $request->id)
                      ->where('pincode', $request->pincode)
                      ->first();

       return $pincodes;
    }

    public function filter($data){

      $name = $data['FilterBy'];
      $param = $data['parameter'];
      $pincodes = Pincode::sortable(['id'=>'ASC'])
          ->where('pincode', 'LIKE', '%' . $param . '%')
          ->groupby('id')
          ->paginate(10);

        return $pincodes;
    }

    public function insert($request){
       $date_added	= date('y-m-d h:i:s');
      
       DB::table('pincodes')->insertGetId([
            'pincode'   =>   $request->pincode,
            'created_at'   =>   $date_added,
            'updated_at'   =>   $date_added,
            
        ]);
    }


    public function recordToUpdate($pincode_id){
        $pincode = DB::table('pincodes')
                      ->where('id', $pincode_id)
                      ->first();
        return $pincode;
    }

    public function updaterecord($request){
      $last_modified 	=   date('y-m-d h:i:s');

     
      
        
          DB::table('pincodes')->where('id', $request->id)->update(
          [
            'pincode'   =>   $request->pincode,
            'created_at'   =>   $last_modified,
            'updated_at'   =>   $last_modified,
          ]);
        
        return $request->id;


      
    }

    public function deleterecord($request){

        $pincode_id = $request->id;
        DB::table('pincodes')->where('id', $pincode_id)->delete();
        return "success";
    }

}
