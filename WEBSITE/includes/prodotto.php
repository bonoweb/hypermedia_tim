<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include_once('../common/functions.php');
header('Access-Control-Allow-Origin: *');
if(isset($_GET['id'])) {
    $id = $_GET['id'];
    echo json_encode(get_product($id));
}

