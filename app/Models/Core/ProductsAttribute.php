<?php

namespace App\Models\Core;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use App\Models\Core\Images;
use App\Models\Core\Setting;
use App\Models\Core\Languages;
use App\Models\Core\Manufacturers;
use App\Models\Core\Categories;
use App\Models\Core\Products;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\AdminControllers\SiteSettingController;
use App\Http\Controllers\AdminControllers\AlertController;
use Illuminate\Support\Facades\Lang;
use Carbon\Carbon;

class ProductsAttribute extends Model
{

    public function __construct(Setting $setting)
    {
      $this->myVarsetting = new SiteSettingController($setting);
      $this->myVaralter = new AlertController($setting);
    }

    public function display($request){
      $extensions =  $this->myVarsetting->imageType();
      $attributes = DB::table('products_options')->get();
      $result = array();
      $index = 0;
      foreach($attributes as $attributes_data){
          array_push($result, $attributes_data);
          $languages =  $this->myVarsetting->getLanguages();
          $result2 = array();
          $index2 = 0;
          foreach($languages as $language){
              array_push($result2, $language);
              $attributes = DB::table('products_options_descriptions')
                  ->where('products_options_id','=',$attributes_data->products_options_id)
                  ->where('language_id','=',$language->languages_id)
                  ->get();
              $result2[$index2]->attributes = $attributes;
              $values = DB::table('products_options_values')
                  ->join('products_options_values_descriptions', 'products_options_values_descriptions.products_options_values_id','=', 'products_options_values.products_options_values_id')
                  ->select('products_options_values_descriptions.*')
                  ->where('language_id','=',$language->languages_id)
                  ->where('products_options_values.products_options_id','=',$attributes_data->products_options_id)->get();

              $result2[$index2]->values =$values;
              $index2++;
          }

          $result[$index]->data =$result2;
          $index++;
      }
      return $result;
    }

    public function insert($request){
      $result = array();
      $languages =  $this->myVarsetting->getLanguages();
      $i = 0;
      foreach($languages as $languages_data){
          $OptionsName = 'OptionsName_'.$languages_data->languages_id;
          if($i==0){
              $req_OptionsName = $request->$OptionsName;
              $products_options_id = DB::table('products_options')->insertGetId([
                  'products_options_name'   =>   $req_OptionsName,
              ]);

              $i++;
          }
          $req_OptionsName = $request->$OptionsName;
          DB::table('products_options_descriptions')->insert([
              'options_name'   		  =>   $req_OptionsName,
              'products_options_id'     =>   $products_options_id,
              'language_id'       	  =>   $languages_data->languages_id
          ]);
      }
    }

    public function edit($request){
      $result['languages'] =  $this->myVarsetting->getLanguages();
      $editoptions = DB::table('products_options')
      ->where('products_options_id', $request->id)
      ->get();
      $description_data = array();
      foreach($result['languages'] as $languages_data){
        $description = DB::table('products_options_descriptions')->where([
            ['language_id', '=', $languages_data->languages_id],
            ['products_options_id', '=', $request->id],
        ])->get();
          if(count($description)>0){
              $description_data[$languages_data->languages_id]['name'] = $description[0]->options_name;
              $description_data[$languages_data->languages_id]['language_name'] = $languages_data->name;
              $description_data[$languages_data->languages_id]['languages_id'] = $languages_data->languages_id;
          }else{
              $description_data[$languages_data->languages_id]['name'] = '';
              $description_data[$languages_data->languages_id]['language_name'] = $languages_data->name;
              $description_data[$languages_data->languages_id]['languages_id'] = $languages_data->languages_id;
          }
      }
      $result['description'] = $description_data;
      $result['editoptions'] = $editoptions;
      return $result;
    }


    public function updaterecord($request){
      $products_options_id = $request->products_options_id;
      $languages =  $this->myVarsetting->getLanguages();
      foreach($languages as $languages_data){
          $options_name = 'options_name_'.$languages_data->languages_id;
          $checkExist = DB::table('products_options_descriptions')->where('products_options_id','=',$products_options_id)->where('language_id','=',$languages_data->languages_id)->get();
          if(count($checkExist)>0){
              $req_options_name = $request->$options_name;
              DB::table('products_options_descriptions')->where('products_options_id','=',$products_options_id)->where('language_id','=',$languages_data->languages_id)->update([
                  'options_name'  	    		 =>   $req_options_name,
              ]);                  }else{
              $req_options_name = $request->$options_name;
              DB::table('products_options_descriptions')->insert([
                  'options_name'  	     =>   $req_options_name,
                  'language_id'			 =>   $languages_data->languages_id,
                  'products_options_id'	 =>   $products_options_id,
              ]);
           }
      }
    }

    public function deleterecord($request){
      $option_id = $request->option_id;
      DB::table('products_options')->where('products_options_id','=',$option_id)->delete();
      DB::table('products_options_descriptions')->where('products_options_id','=',$option_id)->delete();

      $values = DB::table('products_options_values')->where('products_options_id','=',$option_id)->get();
      foreach($values as $value){
          DB::table('products_options_values_descriptions')->where('products_options_values_id','=',$value->products_options_values_id)->delete();
      }
      DB::table('products_options_values')->where('products_options_id','=',$option_id)->delete();
    }

    public function displayoptionsvalues($request){

      $data = array();
      $extensions =  $this->myVarsetting->imageType();
      $products_options_id = $request->id;
      $value = DB::table('products_options_values')->where('products_options_id', $products_options_id)->get();
      $result = array();
      $index = 0;
      foreach($value as $values_data){
          array_push($result, $values_data);
          $languages =  $this->myVarsetting->getLanguages();

          $result2 = array();
          $index2 = 0;
          foreach($languages as $language){
              array_push($result2, $language);

              $values = DB::table('products_options_values_descriptions')
                  ->where('products_options_values_id', '=', $values_data->products_options_values_id)
                  ->where('language_id', '=', $language->languages_id)
                  ->get();
              $result2[$index2]->values = $values;
              $index2++;
          }

          $result[$index]->data =$result2;
          $index++;
      }
      $data['languages'] =  $this->myVarsetting->getLanguages();
      $data['content'] = $result;
      $data['options'] = DB::table('products_options')
                          ->join('products_options_descriptions', 'products_options_descriptions.products_options_id', '=', 'products_options.products_options_id')
                          ->where('products_options.products_options_id', $products_options_id)->get();
        return $data;
    }

    public function insertoptionsvalues($request){
      $result = array();
      $languages =  $this->myVarsetting->getLanguages();
      $path = $this->uploadImage($request);
      

      $i = 0;
      //multiple lanugauge with record
      foreach($languages as $languages_data){
          $products_options_values_name = 'ValuesName_'.$languages_data->languages_id;
          if($i==0){
              $requ_products_options_values_name = $request->$products_options_values_name;
              $products_options_values_id = DB::table('products_options_values')->insertGetId([
                  'products_options_values_name' => $requ_products_options_values_name,
                  'products_options_id' => $request->products_options_id,
                  "description"=>isset($request->option_description)?$request->option_description:'',
                  'image_path' => $path
              ]);
            $i++;
          }
          $requ_products_options_values_name = $request->$products_options_values_name;
          DB::table('products_options_values_descriptions')->insert([
              'options_values_name' => $requ_products_options_values_name,
              'products_options_values_id' => $products_options_values_id,
              'language_id' => $languages_data->languages_id
          ]);
         }
    }
    public function uploadImage($request){
        $path = '';
       
        if($request->hasFile('option_image')){
            // Creating a new time instance, we'll use it to name our file and declare the path
            $time = Carbon::now();
            $image = $request->file('option_image');
            $extensions = Setting::imageType();      
            if ($request->hasFile('option_image') and in_array($request->option_image->extension(), $extensions)) {
                $size = getimagesize($image);
                list($width, $height, $type, $attr) = $size;
                // Getting the extension of the file
                $extension = $image->getClientOriginalExtension();
                // Creating the directory, for example, if the date = 18/10/2017, the directory will be 2017/10/
                $directory = date_format($time, 'Y') . '/' . date_format($time, 'm');
                // Creating the file name: random string followed by the day, random number and the hour
                $filename = str_random(5) . date_format($time, 'd') . rand(1, 9) . date_format($time, 'h') . "." . $extension;
                // This is our upload main function, storing the image in the storage that named 'public'
                $upload_success = $image->storeAs($directory, $filename, 'public');
                $path = 'images/media/' . $directory . '/' . $filename;


            }                      
        
        }
        return $path;
    }

    public function editoptionsvalues($request){
      $result['languages'] =  $this->myVarsetting->getLanguages();
      $edit = DB::table('products_options_values')->where('products_options_values_id', $request->id)->get();
      $description_data = array();
      foreach($result['languages'] as $languages_data){
        $description = DB::table('products_options_values_descriptions')->where([
            ['language_id', '=', $languages_data->languages_id],
            ['products_options_values_id', '=', $request->id],
        ])->get();
          if(count($description)>0){
              $description_data[$languages_data->languages_id]['name'] = $description[0]->options_values_name;
              $description_data[$languages_data->languages_id]['language_name'] = $languages_data->name;
              $description_data[$languages_data->languages_id]['languages_id'] = $languages_data->languages_id;
          }else{
              $description_data[$languages_data->languages_id]['name'] = '';
              $description_data[$languages_data->languages_id]['language_name'] = $languages_data->name;
              $description_data[$languages_data->languages_id]['languages_id'] = $languages_data->languages_id;
          }
      }
      $option = DB::table('products_options')->where('products_options_id', $edit[0]->products_options_id)->first();
      $result['description'] = $description_data;
      $result['editoptions'] = $edit;
      $result['options'] = $option;
      return $result;
    }


    public function updateoptionsvalues($request){
      $products_options_values_id = $request->products_options_values_id;
      $languages =  $this->myVarsetting->getLanguages();
      $edit = DB::table('products_options_values')->where('products_options_values_id', $request->products_options_values_id)->first();
      if(isset($request->option_description)){
        DB::table('products_options_values')->where('products_options_values_id', $request->products_options_values_id)->update(['description' => $request->option_description]);

     
      }
      $path = $this->uploadImage($request);
      if($path!=""){
        DB::table('products_options_values')->where('products_options_values_id', $request->products_options_values_id)->update(['image_path' => $path]);

      
      }
     foreach($languages as $languages_data){
          $options_values_name = 'options_values_name_'.$languages_data->languages_id;
          $checkExist = DB::table('products_options_values_descriptions')->where('products_options_values_id', '=', $products_options_values_id)->where('language_id', '=', $languages_data->languages_id)->get();
          if(count($checkExist)>0){
              $req_options_values_name = $request->$options_values_name;
              DB::table('products_options_values_descriptions')->where('products_options_values_id', '=', $products_options_values_id)->where('language_id', '=', $languages_data->languages_id)->update([
                  'options_values_name' => $req_options_values_name,
              ]);
            }else{
              $req_options_values_name = $request->$options_values_name;
              DB::table('products_options_values_descriptions')->insert([
                  'options_values_name'  	    		 =>   $req_options_values_name,
                  'language_id'						 =>   $languages_data->languages_id,
                  'products_options_values_id'		 =>   $products_options_values_id,
              ]);                  }
      }
    }

    public function deleteoptionsvalues($request){
      $value_id = $request->value_id;
      DB::table('products_options_values')->where('products_options_values_id','=',$value_id)->delete();
      DB::table('products_options_values_descriptions')->where('products_options_values_id','=',$value_id)->delete();
    }

    public function addattributevalue($request){
      $attributes = array();
      $message = array();
      $errorMessage = array();
      $products_options_values_id = DB::table('products_options_values')->insertGetId([
          'products_options_values_name'  =>   $request->products_options_values_name,
          'language_id'			 		=>   $request->language_id,
      ]);
      return $attributes;
    }

    public function updateattributevalue($request){
      $attributes = array();
      $message = array();
      $errorMessage = array();
      DB::table('products_options_values')
          ->where('products_options_values_id','=',$request->products_options_values_id)
          ->update(['products_options_values_name' =>  $request->products_options_values_name]);
       return $attributes;
    }

    public function checkattributeassociate($request){
      $option_id = $request->option_id;
      $products = DB::table('products_attributes')
          ->join('products','products.products_id','=','products_attributes.products_id')
          ->join('products_description','products_description.products_id','=','products.products_id')
          ->where('options_id','=',$option_id)
          ->get();
      if(count($products)>0){
          foreach($products as $products_data){
              print ("<li style='display:inline-block; width: 30%'>".$products_data->products_name."</li>");
          }
      }else{
      }
    }

    public function checkvalueassociate(Request $request){
      $value_id = $request->value_id;
      $products = DB::table('products_attributes')
          ->join('products', 'products.products_id', '=', 'products_attributes.products_id')
          ->join('products_description', 'products_description.products_id', '=', 'products.products_id')
          ->where('options_values_id', '=', $value_id)
          ->get();

      if (count($products) > 0) {
          foreach ($products as $products_data) {
              print ("<li style='display:inline-block; width: 30%'>" . $products_data->products_name . "</li>");
          }
      }
    }







}
