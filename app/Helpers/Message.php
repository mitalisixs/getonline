<?php
namespace App\Helpers;

//use Twilio\Rest\Client;
//sendMessage("test","+919033744973");
Class Message{
    public static function sendMessage($message, $recipients)
    {
        //echo "ddd";exit;
        try{

        $url="http://psms.hakimisolution.com/submitsms.jsp?user=farmerc&key=051461a3e3XX&mobile=$recipients";
        $url.= "&message=$message&senderid=DALERT&accusage=1";
       // $json = json_decode(file_get_contents(urldecode($url)), true);
		    $ch = curl_init();
			$headers = array(
			
			);
			curl_setopt($ch, CURLOPT_URL, $url);
			curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
			curl_setopt($ch, CURLOPT_HEADER, 0);
			$body = '{}';

			curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "GET"); 
			curl_setopt($ch, CURLOPT_POSTFIELDS,$body);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

			// Timeout in seconds
			curl_setopt($ch, CURLOPT_TIMEOUT, 30);

			$authToken = curl_exec($ch);
			info("authToken-------");
			json_encode($authToken);

        /* $account_sid = getenv("TWILIO_SID");
            $auth_token = getenv("TWILIO_AUTH_TOKEN");
            $twilio_number = getenv("TWILIO_NUMBER");
            $client = new Client($account_sid, $auth_token);
            $client->messages->create($recipients, 
                    ['from' => $twilio_number, 'body' => $message] );*/
        } catch (Exception $e) {

        }

    }
}
