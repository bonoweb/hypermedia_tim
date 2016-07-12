<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include_once('../common/functions.php');
header('Access-Control-Allow-Origin: *');
if(isset($_GET['cosa'])) {
    $cosa=$_GET['cosa'];
    switch ($cosa){
        case "descr_gruppo": echo json_encode(get_descr_gruppo());
            break;
        case "novita": echo json_encode(get_novita());
            break;
        case "amministrazione": echo json_encode(get_amministrazione());
            break;
        case "business_market": echo json_encode(get_business_market());
            break;
        case "investitori": echo json_encode(get_investitori());
            break;
        default: break;
    }
}