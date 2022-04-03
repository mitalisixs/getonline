<?php

namespace App\Http\Controllers\AdminControllers;

use App\Models\Core\Languages;
use App\Models\Core\Pincode;
use App\Models\Core\Setting;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;
use Exception;
use App\Models\Core\Images;


class PincodeController extends Controller
{
  public function __construct(Pincode $pincodes, Setting $setting)
  {
    $this->pincodes = $pincodes;
    $this->Setting = $setting;
  }

  public function display(){
    $title = array('pageTitle' => "Pincode");
    $pincodes = $this->pincodes->paginator();
    $result['commonContent'] = $this->Setting->commonContent();
    $settings = $this->Setting->getallsetting();
    $result['settings'] = $settings->unique('id')->keyBy('id');
  //  dd($result['settings']);
    return view("admin.pincodes.index",$title)->with('result', $result)->with('pincodes', $pincodes);
  }


  public function filter(Request $request){
    $title = array('pageTitle' => "Pincodes");
    $categories = $this->Categories->filter($request);
    return view("admin.categories.index", $title)->with(['categories'=> $categories, 'name'=> $request->FilterBy, 'param'=> $request->parameter]);
  }

  public function add(Request $request){
    $title = array('pageTitle' => "Add Pincode");
    $pincodes = DB::table('pincodes')->get();
    $result['commonContent'] = $this->Setting->commonContent();
    return view("admin.pincodes.add",['title' => $title, 'pincodes' => $pincodes, 'result' => $result]);
  }

  public function insert(Request $request){
    //check already has
    $exist = $this->pincodes->checkexist($request);
    if($exist){
      $message = "Pincode already exist";
      return redirect()->back()->withErrors([$message]);
    }else{
      $this->pincodes->insert($request);
      $message = "Pincode Addded Successfully";
      return redirect()->back()->with('success',$message);
    }
  }

  public function edit($pincode_id){
    $title = array('pageTitle' => "Edit Pincode");
    $result = array();
    $pincodes = DB::table('pincodes')->get();
    $pincode = $this->pincodes->recordToUpdate($pincode_id);
    $result['pincode'] = $pincode;
    $result['commonContent'] = $this->Setting->commonContent();
    return view("admin.pincodes.edit",['title' => $title,'pincodes' => $pincodes])->with('result', $result);
   }

   
   public function update(Request $request){

      $exist = $this->pincodes->checkexistupdate($request);
      if($exist){
        $message = "Pincode already exist";
        return redirect()->back()->withErrors([$message]);
      }else{
        $id = $this->pincodes->updaterecord($request);
        $message = "Pincode Edit Successfully";
        return redirect('/admin/pincodes/edit/'.$id)->with('success', $message);
      }


    }

    public function delete(Request $request){
      $deletecategory = $this->pincodes->deleterecord($request);
      $message = "Pincode Deleted Successfully";
      return redirect()->back()->withErrors([$message]);
    }
}
