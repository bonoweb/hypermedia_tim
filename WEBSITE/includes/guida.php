<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include_once('../common/functions.php');
header('Access-Control-Allow-Origin: *');
$assdesc = get_guida();   
$assprod = get_guida_prod();
echo json_encode(["desc" => $assdesc , "prod" => $assprod] );