<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include_once('../common/functions.php');
header('Access-Control-Allow-Origin: *');
if(!isset($_GET['idcategoria'])) {
    echo json_encode(get_ass_serv_categories());
}
else{
    /*
    $idcategory=$_GET['idcategoria'];
    get_products_by_category($idcategory);*/
}
