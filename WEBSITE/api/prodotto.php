<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include_once('../common/functions.php');
header('Access-Control-Allow-Origin: *');
if(isset($_GET['id'])) {
    $id = $_GET['id'];
    $prodotto = get_product($id);
    $prodotto[0]['nome_categoria']= get_prod_category_name($prodotto[0]['id_categoria']);
    echo json_encode($prodotto);
}

