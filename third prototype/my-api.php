<?php 
header('Access-Control-Allow-Origin: *');

header('Access-Control-Allow-Methods: GET, POST');

header("Access-Control-Allow-Headers: X-Requested-With");
//to get default time zone of Kathmandu Nepal.
date_default_timezone_set('Asia/Kathmandu');
//connection to the connection.php
require_once ('connection.php');
include('data-import.php');
    if ($conn -> query($qry)){
        $sqlquery = "SELECT * FROM weather WHERE weather_when >= DATE_SUB(NOW(), INTERVAL 4000 SECOND) ORDER BY weather_when DESC limit 1;";
        $num= $conn -> query($sqlquery);
        $results=$num->fetch_all(MYSQLI_ASSOC);
        print_r(json_encode($results));
    }
    else{
        echo "Connection failed";
    }
?> 

