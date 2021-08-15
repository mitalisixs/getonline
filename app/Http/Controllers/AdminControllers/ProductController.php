<?php

namespace App\Http\Controllers\AdminControllers;

use App\Http\Controllers\AdminControllers\AlertController;
use App\Http\Controllers\AdminControllers\SiteSettingController;
use App\Http\Controllers\AdminControllers\CategoriesController;
use App\Http\Controllers\AdminControllers\MediaController;

use App\Http\Controllers\Controller;
use App\Models\Core\Categories;
use App\Models\Core\Images;
use App\Models\Core\Languages;
use App\Models\Core\Manufacturers;
use App\Models\Core\Products;
use App\Models\Core\Reviews;
use App\Models\Core\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;
use Validator;
use Illuminate\Support\Str;


class ProductController extends Controller
{

    public function __construct(Products $products, Languages $language, Images $images, Categories $category, Setting $setting,
        Manufacturers $manufacturer, Reviews $reviews) {
        $this->category = $category;
        $this->reviews = $reviews;
        $this->language = $language;
        $this->images = $images;
        $this->manufacturer = $manufacturer;
        $this->products = $products;
        $this->myVarsetting = new SiteSettingController($setting);
        $this->myVaralter = new AlertController($setting);
        $this->mycategory = new CategoriesController( $category,$setting);
        $this->myimages = new MediaController( $images,$setting);
        $this->Setting = $setting;

    }

    public function reviews(Request $request)
    {
        $title = array('pageTitle' => Lang::get("labels.reviews"));
        $result = array();
        $data = $this->reviews->paginator();
        $result['reviews'] = $data;
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.reviews.index", $title)->with('result', $result);

    }

    public function editreviews($id, $status)
    {
        if ($status == 1) {
            DB::table('reviews')
                ->where('reviews_id', $id)
                ->update([
                    'reviews_status' => 1,
                ]);
            DB::table('reviews')
                ->where('reviews_id', $id)
                ->update([
                    'reviews_read' => 1,
                ]);
        } elseif ($status == 0) {
            DB::table('reviews')
                ->where('reviews_id', $id)
                ->update([
                    'reviews_read' => 1,
                ]);
        } else {
            DB::table('reviews')
                ->where('reviews_id', $id)
                ->update([
                    'reviews_read' => 1,
                    'reviews_status' => -1,
                ]);
        }
        $message = Lang::get("labels.reviewupdateMessage");
        return redirect()->back()->withErrors([$message]);

    }

    public function display(Request $request)
    {
        $language_id = '1';
        $categories_id = $request->categories_id;
        $product = $request->product;
        $title = array('pageTitle' => Lang::get("labels.Products"));
        $subCategories = $this->category->allcategories($language_id);
        $products = $this->products->paginator($request);
        $results['products'] = $products;
        $results['currency'] = $this->myVarsetting->getSetting();
        $results['units'] = $this->myVarsetting->getUnits();
        $results['subCategories'] = $subCategories;
        $currentTime = array('currentTime' => time());
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.products.index", $title)->with('result', $result)->with('results', $results)->with('categories_id', $categories_id)->with('product', $product);

    }

    public function add(Request $request)
    {
        $title = array('pageTitle' => Lang::get("labels.AddProduct"));
        $language_id = '1';
        $allimage = $this->images->getimages();
        $result = array();
        $categories = $this->category->recursivecategories($request);

        $parent_id = array();
        $option = '<ul class="list-group list-group-root well">';

        foreach ($categories as $parents) {

            if (in_array($parents->categories_id, $parent_id)) {
                $checked = 'checked';
            } else {
                $checked = '';
            }

            $option .= '<li href="#" class="list-group-item">
          <label style="width:100%">
            <input id="categories_' . $parents->categories_id . '" ' . $checked . ' type="checkbox" class=" required_one categories sub_categories" name="categories[]" value="' . $parents->categories_id . '">
          ' . $parents->categories_name . '
          </label></li>';

            if (isset($parents->childs)) {
                $option .= '<ul class="list-group">
          <li class="list-group-item">';
                $option .= $this->childcat($parents->childs, $parent_id);
                $option .= '</li></ul>';
            }
        }
        $option .= '</ul>';

        $result['categories'] = $option;

        $result['manufacturer'] = $this->manufacturer->getter($language_id);
        $taxClass = DB::table('tax_class')->get();
        $result['taxClass'] = $taxClass;
        $result['languages'] = $this->myVarsetting->getLanguages();
        $result['units'] = $this->myVarsetting->getUnits();
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.products.add", $title)->with('result', $result)->with('allimage', $allimage);

    }

    public function childcat($childs, $parent_id)
    {

        $contents = '';
        foreach ($childs as $key => $child) {

            if (in_array($child->categories_id, $parent_id)) {
                $checked = 'checked';
            } else {
                $checked = '';
            }

            $contents .= '<label> <input id="categories_' . $child->categories_id . '" parents_id="' . $child->parent_id . '"  type="checkbox" name="categories[]" class="required_one sub_categories categories sub_categories_' . $child->parent_id . '" value="' . $child->categories_id . '" ' . $checked . '> ' . $child->categories_name . '</label>';

            if (isset($child->childs)) {
                $contents .= '<ul class="list-group">
        <li class="list-group-item">';
                $contents .= $this->childcat($child->childs, $parent_id);
                $contents .= "</li></ul>";
            }

        }
        return $contents;
    }

    public function edit(Request $request)
    {
        $allimage = $this->images->getimages();
        $result = $this->products->edit($request);
        //dd($result['categories_array']);
        $categories = $this->category->recursivecategories($request);

        $parent_id = $result['categories_array'];
        $option = '<ul class="list-group list-group-root well">';

        foreach ($categories as $parents) {

            if (in_array($parents->categories_id, $parent_id)) {
                $checked = 'checked';
            } else {
                $checked = '';
            }

            $option .= '<li href="#" class="list-group-item">
        <label style="width:100%">
          <input id="categories_' . $parents->categories_id . '" ' . $checked . ' type="checkbox" class=" required_one categories sub_categories" name="categories[]" value="' . $parents->categories_id . '">
        ' . $parents->categories_name . '
        </label></li>';

            if (isset($parents->childs)) {
                $option .= '<ul class="list-group">
        <li class="list-group-item">';
                $option .= $this->childcat($parents->childs, $parent_id);
                $option .= '</li></ul>';
            }
        }

        $option .= '</ul>';
        $result['categories'] = $option;
        $title = array('pageTitle' => Lang::get("labels.EditProduct"));
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.products.edit", $title)->with('result', $result)->with('allimage', $allimage);

    }

    public function update(Request $request)
    {
        $validated = $request->validate([
            'product_sku' => 'required|max:255|unique:products,product_sku,'.$request->id.',products_id',
            
        ]);
        
        $result = $this->products->updaterecord($request);
        $products_id = $request->id;
        if ($request->products_type == 1) {
            return redirect('admin/products/attach/attribute/display/' . $products_id);
        } else {
            return redirect('admin/products/images/display/' . $products_id);
        }
    }

    public function delete(Request $request)
    {
        $this->products->deleterecord($request);
        return redirect()->back()->withErrors([Lang::get("labels.ProducthasbeendeletedMessage")]);

    }

    public function insert(Request $request)
    {
        $validated = $request->validate([
            'product_sku' => 'required|unique:products|max:255',

        ]);
    
        $title = array('pageTitle' => Lang::get("labels.AddAttributes"));
        $language_id = '1';
        $products_id = $this->products->insert($request);
        $result['data'] = array('products_id' => $products_id, 'language_id' => $language_id);
        $alertSetting = $this->myVaralter->newProductNotification($products_id);
        if ($request->products_type == 1) {
            return redirect('/admin/products/attach/attribute/display/' . $products_id);
        } else {
            return redirect('admin/products/images/display/' . $products_id);
        }
    }

    public function addinventory(Request $request)
    {
        $title = array('pageTitle' => Lang::get("labels.ProductInventory"));
        $id = $request->id;
        $result = $this->products->addinventory($id);
        
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.products.inventory.add", $title)->with('result', $result);

    }

    public function ajax_min_max($id)
    {
        $title = array('pageTitle' => Lang::get("labels.ProductInventory"));
        $result = $this->products->ajax_min_max($id);
        return $result;

    }

    public function ajax_attr($id)
    {
        $title = array('pageTitle' => Lang::get("labels.ProductInventory"));
        $result = $this->products->ajax_attr($id);
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.products.inventory.attribute_div")->with('result', $result);

    }

    public function addinventoryfromsidebar(Request $request)
    {
        $title = array('pageTitle' => Lang::get("labels.ProductInventory"));
        $result = $this->products->addinventoryfromsidebar();
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.products.inventory.add1", $title)->with('result', $result);

    }

    public function addnewstock(Request $request)
    {

        $this->products->addnewstock($request);
        return redirect()->back()->withErrors([Lang::get("labels.inventoryaddedsuccessfully")]);

    }

    public function addminmax(Request $request)
    {

        $this->products->addminmax($request);
        return redirect()->back()->withErrors([Lang::get("labels.Min max level added successfully")]);

    }

    public function displayProductImages(Request $request)
    {

        $title = array('pageTitle' => Lang::get("labels.AddImages"));
        $products_id = $request->id;
        $result = $this->products->displayProductImages($request);
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.products/images/index", $title)->with('result', $result)->with('products_id', $products_id);

    }

    public function addProductImages($products_id)
    {
        $title = array('pageTitle' => Lang::get("labels.AddImages"));
        $allimage = $this->images->getimages();
        $result = $this->products->addProductImages($products_id);
        $result['commonContent'] = $this->Setting->commonContent();
        return view('admin.products.images.add', $title)->with('result', $result)->with('products_id', $products_id)->with('allimage', $allimage);

    }

    public function insertProductImages(Request $request)
    {
        $product_id = $this->products->insertProductImages($request);
        return redirect()->back()->with('product_id', $product_id);
    }

    public function editProductImages($id)
    {

        $allimage = $this->images->getimages();
        $products_images = $this->products->editProductImages($id);
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin/products/images/edit")->with('result', $result)->with('products_images', $products_images)->with('allimage', $allimage);

    }

    public function updateproductimage(Request $request)
    {

        $title = array('pageTitle' => Lang::get("labels.Manage Values"));
        $result = $this->products->updateproductimage($request);
        return redirect()->back();

    }

    public function deleteproductimagemodal(Request $request)
    {

        $products_id = $request->products_id;
        $id = $request->id;
        $result['data'] = array('products_id' => $products_id, 'id' => $id);
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin/products/images/modal/delete")->with('result', $result);

    }

    public function deleteproductimage(Request $request)
    {
        $this->products->deleteproductimage($request);
        return redirect()->back()->with('success', trans('labels.DeletedSuccessfully'));

    }

    public function addproductattribute(Request $request)
    {
        $title = array('pageTitle' => Lang::get("labels.AddAttributes"));
        $result = $this->products->addproductattribute($request);
        $result['commonContent'] = $this->Setting->commonContent();
      
        
        return view("admin.products.attribute.add", $title)->with('result', $result);
    }

    public function addnewdefaultattribute(Request $request)
    {
        $products_attributes = $this->products->addnewdefaultattribute($request);
        return ($products_attributes);
    }

    public function editdefaultattribute(Request $request)
    {
        $result = $this->products->editdefaultattribute($request);
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin/products/pop_up_forms/editdefaultattributeform")->with('result', $result);
    }

    public function updatedefaultattribute(Request $request)
    {
        $products_attributes = $this->products->updatedefaultattribute($request);
        return ($products_attributes);

    }

    public function deletedefaultattributemodal(Request $request)
    {

        $products_id = $request->products_id;
        $products_attributes_id = $request->products_attributes_id;
        $result['data'] = array('products_id' => $products_id, 'products_attributes_id' => $products_attributes_id);
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin/products/modals/deletedefaultattributemodal")->with('result', $result);

    }

    public function deletedefaultattribute(Request $request)
    {
        $products_attributes = $this->products->deletedefaultattribute($request);
        return ($products_attributes);
    }

    public function showoptions(Request $request)
    {
        $products_attributes = $this->products->showoptions($request);
        return ($products_attributes);
    }

    public function editoptionform(Request $request)
    {
        $result = $this->products->editoptionform($request);
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin/products/pop_up_forms/editproductattributeoptionform")->with('result', $result);

    }

    public function updateoption(Request $request)
    {
        $products_attributes = $this->products->updateoption($request);
        return ($products_attributes);
    }

    public function showdeletemodal(Request $request)
    {

        $products_id = $request->products_id;
        $products_attributes_id = $request->products_attributes_id;
        $result['data'] = array('products_id' => $products_id, 'products_attributes_id' => $products_attributes_id);
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin/products/modals/deleteproductattributemodal")->with('result', $result);

    }

    public function deleteoption(Request $request)
    {

        $products_attributes = $this->products->deleteoption($request);
        return ($products_attributes);

    }

    public function getOptionsValue(Request $request)
    {
        $value = $this->products->getOptionsValue($request);
        if (count($value) > 0) {
            foreach ($value as $value_data) {
                $value_name[] = "<option value='" . $value_data->products_options_values_id . "'>" . $value_data->options_values_name . "</option>";
            }
        } else {
            $value_name = "<option value=''>" . Lang::get("labels.ChooseValue") . "</option>";
        }
        print_r($value_name);
    }

    public function currentstock(Request $request)
    {

        $result = $this->products->currentstock($request);
        print_r(json_encode($result));

    }
     //*** POST Request
     public function import(){
        $result=array();
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin.products.productcsv")->with('result', $result);
    }

    public function importSubmit(Request $request)
    {
       
        // $products= $this->products->get();
        // foreach ($products as $product){
        //     $pro=Products::where('products_id',$product->products_id)->first();
        //     $pro->product_sku = Str::random(30);
        //     $pro->save();

        // }
		
        $log = "";
        //--- Validation Section
        $rules = [
            'csvfile'      => 'required|mimes:csv,txt',
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
		$csvData = file_get_contents($request->file('csvfile'));
		$lines = explode(PHP_EOL, $csvData);
		$array = array();
		$lines = array_map("utf8_encode", $lines); //added

		foreach ($lines as $line) {
			
			$array[] = str_getcsv($line);
		}
		
	
    /*    $filename = '';
        if ($file = $request->file('csvfile'))
        {
            $filename = time().'-'.$file->getClientOriginalName();
            $file->move('assets/temp_files',$filename);
        }

			

        //$filename = $request->file('csvfile')->getClientOriginalName();
        //return response()->json($filename);
        $datas = "";

        $file = fopen(public_path('assets/temp_files/'.$filename),"r");*/
        $i = 1;
		
    //    while (($line = fgetcsv($file)) !== FALSE) {
		//dd($array);
      
   //     echo "<pre>";print_r($subCategoriesArray);echo "</pre>";exit;
        //
            unset($array[0]);
		  foreach ($array as $line) {
              $input = [];
              $line = $this->sanitize($line);
			  $pID= $sId =$cID=0;
                if( count($line)>9 && ($line[0]!="" || $line[0]!=null))
                {
					
                    if (!Products::where('product_sku',$line[0])->exists()){
					
                        $data = new Products;

                        $input['products_type'] = '0';
                        $input['product_sku'] = $line[0];

                        $line[1]=trim(strtolower($line[1]));
                        $line[2]=trim(strtolower($line[2]));
                        $line[3]=trim(strtolower($line[3]));
                        
                        $subCategoriesArray=[];
                        $subCategories = $this->category->allcategories(1)->toArray();
                        foreach($subCategories as $cat){
                            $cat=(array) $cat;
                            $subCategoriesArray[strtolower($cat['name']).'_'.$cat['parent_id']]=$cat;
                        }

                        //	dd($subCategories);
      			        //	dd($subCategoriesArray);
					 //   echo "--------------------$i------------------------------"."<br/>";
					    //echo "<pre>";print_r($subCategoriesArray);echo "</pre>";
                        $uploadImage=540;
                        if(isset($subCategoriesArray[$line[1].'_'.'0']) && $subCategoriesArray[$line[1].'_'.'0']["parent_id"]==0 ){
                            
                            $id= $subCategoriesArray[$line[1].'_'.'0']['id'];
                            $input['categories'][]= $id;
                            #echo "in parent category--->".$id."------".$line[1]."</br>";
                            
                        }else{

                            $id = $this->mycategory->insertData(["categoryName_1"=>$line[1],"categoryName"=>$line[1],"parent_id"=>0,"image_id"=>$uploadImage,"image_icone"=>$uploadImage,"categories_status"=>1,"insert_api"=>1]);
                            $input['categories'][] = $id;
                            $subCategoriesArray[$line[1].'_'.'0']=["id"=>$id,"parent_id"=>0];
                          //  $subCategoriesArray[$line[1].'_'.'0']=$cat;
                            #echo "not parent category--->".$id."------".$line[1]."</br>";

                        }
                        $pID=$id;
                        if(isset($subCategoriesArray[$line[2]."_".$pID] ) && $subCategoriesArray[$line[2]."_".$pID]["parent_id"]==$pID ){
                            $sId= $subCategoriesArray[$line[2]."_".$pID]['id'];
                            $input['categories'][]= $sId;
                            #echo "in sub category--->".$sId."------".$line[2]."</br>";
                        }else{

                            $sId = $this->mycategory->insertData(["categoryName_1"=>$line[2],"categoryName"=>$line[2],"parent_id"=>$pID,"image_id"=>$uploadImage,"image_icone"=>$uploadImage,"categories_status"=>1,"insert_api"=>1]);
                            $input['categories'][] = $sId;
                            $subCategoriesArray[$line[2]."_".$pID]=["id"=>$sId,"parent_id"=>$pID];
                            #echo "not in sub category--->".$sId."------".$line[2]."</br>";
                        }
                        //	dd($line);
                        if(isset($subCategoriesArray[$line[3]."_".$sId]) && $subCategoriesArray[$line[3]."_".$sId]["parent_id"]==$sId ){
                            $cId= $subCategoriesArray[$line[3]."_".$sId]['id'];
                            $input['categories'][]=  $cId;
                            #echo "in child category--->".$cId."------".$line[3]."</br>";
                        }else{
                            $cId = $this->mycategory->insertData(["categoryName_1"=>$line[3],"categoryName"=>$line[3],"parent_id"=>$sId,"image_id"=>$uploadImage,"image_icone"=>$uploadImage,"categories_status"=>1,"insert_api"=>1]);
                            $input['categories'][] = $cId;
                            $subCategoriesArray[$line[3]."_".$sId]=["id"=>$cId,"parent_id"=>$sId];
                            #echo "not in child category--->".$cId."------".$line[3]."</br>";
                        }
					
                        
					
                        $image_id=540;
                        
                        if($line[5]!=""){
                            $image_id = $this->myimages->uploadImageFromUrl($line[5]);
                        
                        }
					
                        $input['products_name_1'] = $line[4];
                        $input['products_description_1'] = $line[6];
                        $input['products_price'] =  $line[7];
                        $input['products_min_order'] =  $line[9];
                        $input['products_max_stock'] =  $line[10];
                        $input['products_model'] = $line[11];
                        $input['products_weight']= $line[12];
                        $input['products_status']= $line[13];
                        $input['is_feature']= $line[14];
                        $input["image_id"]=$image_id;
                    
                        $input["tax_class_id"]='';
                        $input["expires_date"]='';
                        $input['products_video_link']= '';
                        $input["manufacturers_id"]='';
                        $input["products_weight_unit"]='';
                        $input["products_left_banner_1"]='';
                        $input["products_right_banner_1"]='';
                        $input["products_weight_unit"]='';
                        $input["products_url_1"]='';
                        $input["isSpecial"]='';
                        $input["isFlash"]='';
                        $input["products_quantity"]= $line[8];
                        
                        
                        
                        $product_id = $this->products->insertWithArray($input);
		                $this->products->insertProductImages(json_decode(json_encode(["products_id"=>$product_id,"image_id"=>$image_id,"htmlcontent"=>"bulkupload"])));

                        $inventory_ref_id = DB::table('inventory')->insertGetId([
                            'products_id' => $product_id,
                            'reference_code' => "bulk_upload",
                            'stock' => $line[8],
                            'admin_id' => auth()->user()->id,
                            //'created_at' => $date_added,
                            'purchase_price' => $line[7],
                            'stock_type' =>   'in'
                    
                        ]);

                        #echo "<pre>";print_r($line);echo "</pre>";
                    }else{
                        $log .= "<br>Row No: ".$i." - Duplicate Product Code!<br>";
                    }
                
                 }

       
        }
        #echo "<pre>";print_r($subCategoriesArray);echo "</pre>";exit;
     //   fclose($file);
		//--- Redirect Section
        $msg = 'Bulk Product File Imported Successfully.<a href="'.route('admin-prod-index').'">View Product Lists.</a>'.$log;
        return response()->json($msg);
    }

    public function sanitize($line){
        $map = [
            // corrupted chars sequence -> fixed chars
            "\xC3\xA8" => 'č',
            "\xC3\x88" => 'Č',
            "\xC3\xB9" => 'ů',
            "\xC3\x99" => 'Ů',
            "\xC3\xAC" => 'ě',
            "\xC3\x8C" => 'Ě',
            "\xC3\xB8" => 'ř',
            "\xC3\x98" => 'Ř',
            "\x53\xC2\x8D" => 'Š',
            "\xC2\xA9" => 'Š',
        ];
        return str_replace(array_keys($map), $map, $line);
    }
    public function displayProductAttributeImages(Request $request)
    {

        $title = array('pageTitle' => Lang::get("labels.AddImages"));
        $products_id = $request->id;
        $result = $this->products->displayProductAttributeImages($request);
        $result['commonContent'] = $this->Setting->commonContent();
        $result['productAtt'] =  DB::table('products_attributes')->where("products_attributes_id",$request->id)->first();
      //  dd($result);
        return view("admin.products.attribute.images.index", $title)->with('result', $result)->with('products_id', $products_id);

    }

    public function addProductAttributeImages($products_id)
    {
        $title = array('pageTitle' => Lang::get("labels.AddImages"));
        $allimage = $this->images->getimages();
        $result = $this->products->addProductAttributeImages($products_id);
        $result['commonContent'] = $this->Setting->commonContent();
        return view('admin.products.attribute.images.add', $title)->with('result', $result)->with('products_id', $products_id)->with('allimage', $allimage);

    }

    public function insertProductAttributeImages(Request $request)
    {
        $product_id = $this->products->insertProductAttributeImages($request);
        return redirect()->back()->with('product_id', $product_id);
    }

    public function editProductAttributeImages($id)
    {

        $allimage = $this->images->getimages();
        $products_images = $this->products->editProductAttributeImages($id);
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin/products/attribute/images/edit")->with('result', $result)->with('products_images', $products_images)->with('allimage', $allimage);

    }

    public function updateProductAttributeImages(Request $request)
    {

        $title = array('pageTitle' => Lang::get("labels.Manage Values"));
        $result = $this->products->updateProductAttributeImages($request);
        return redirect()->back();

    }

    public function deleteProductAttributeImagesmodal(Request $request)
    {

        $products_id = $request->products_id;
        $id = $request->id;
        $result['data'] = array('products_id' => $products_id, 'id' => $id);
        $result['commonContent'] = $this->Setting->commonContent();
        return view("admin/products/attribute/images/modal/delete")->with('result', $result);

    }

    public function deleteProductAttributeImages(Request $request)
    {
        $this->products->deleteProductAttributeImages($request);
        return redirect()->back()->with('success', trans('labels.DeletedSuccessfully'));

    }

    
}
