<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include_once('../common/functions.php');
header('Access-Control-Allow-Origin: *');
if(!isset($_GET['idcategoria'])) {
    echo json_encode(get_smartlife_categories());
}
else{
    $idcategory=$_GET['idcategoria'];
    $slimg = get_smartlife_img($idcategory);   
    $sls =get_smartlife_by_category($idcategory);
echo json_encode(["slimg" => $slimg , "slserv" => $sls] );
}

