<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include_once('../common/functions.php');
header('Access-Control-Allow-Origin: *');
if(isset($_GET['chi'])) {
    $chi=$_GET['chi'];
    switch ($chi){
        case "testimonials": echo json_encode(get_chisiamo(2));
            break;
        case "innovazione": echo json_encode(get_chisiamo(1));
            break;
        case "progetti": echo json_encode(get_chisiamo(3));
            break;
        default: break;
    }
}