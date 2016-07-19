<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include_once('../common/functions.php');
header('Access-Control-Allow-Origin: *');
if(!isset($_GET['idcategoria'])) {
    echo json_encode(get_products_categories());
}
else{
    $idcategory=$_GET['idcategoria'];
    $prods = get_products_by_category($idcategory);
    $nomecategoria =get_prod_category_name($idcategory);
    echo json_encode(['nome_categoria'=> $nomecategoria ,$prods]);
}
