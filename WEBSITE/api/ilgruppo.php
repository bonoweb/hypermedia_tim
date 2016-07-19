<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include_once('../common/functions.php');
header('Access-Control-Allow-Origin: *');
if(isset($_GET['cosa'])) {
    $cosa=$_GET['cosa'];
    switch ($cosa){
        case "descr_gruppo": echo json_encode(get_gruppo(1));
            break;
        case "novita": echo json_encode(get_gruppo(2));
            break;
        case "amministrazione": echo json_encode(get_gruppo(3));
            break;
        case "business_market": echo json_encode(get_gruppo(4));
            break;
        case "investitori": echo json_encode(get_investitori());
            break;
        default: break;
    }
}