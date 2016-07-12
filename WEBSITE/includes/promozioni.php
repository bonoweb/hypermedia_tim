<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include_once('../common/functions.php');
header('Access-Control-Allow-Origin: *');
echo json_encode(get_promotions()));
