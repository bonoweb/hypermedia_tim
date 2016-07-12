<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include_once('../common/functions.php');
header('Access-Control-Allow-Origin: *');
if(isset($_GET['chi'])) {
    $chi=$_GET['chi'];
    switch ($chi){
        case "testimonials": echo json_encode(get_testimonials());
            break;
        case "innovazione": echo json_encode(get_innovazione());
            break;
        case "progetti": echo json_encode(get_progetti());
            break;
        default: break;
    }
}