<?php 
header('Access-Control-Allow-Origin: *');

header('Access-Control-Allow-Methods: GET, POST');

header("Access-Control-Allow-Headers: X-Requested-With");
//to get default time zone of Kathmandu Nepal.
date_default_timezone_set('Asia/Kathmandu');
//connection to the connection.php
require_once ('connection.php');
$qry = "SELECT * FROM weather WHERE weather_when >= DATE_SUB(NOW(), INTERVAL 4000 SECOND) ORDER BY weather_when DESC limit 1;"; 
$result = $conn -> query($qry); 
// If 0 record found 
if ($result->num_rows == 0) { 
    $url ='https://api.openweathermap.org/data/2.5/weather?q=Bournemouth&appid=d0255d218ac2f3ddad42768b46719d07'; 
    // Get data from openweathermap and store in JSON object 
    $data = file_get_contents($url); 
    $json = json_decode($data, true); 
    // Fetch required fields 
    $weather_description = $json['weather'][0]['description']; 
    $weather_temperature = $json['main']['temp']; 
    $weather_wind = $json['wind']['speed']; 
    $weather_when = date("Y-m-d H:i:s");
    $weather_pressure = $json['main']['pressure'];
    $weather_humidity = $json['main']['humidity'];
    $weather_main = $json['weather'][0]['main']; 
    $weather_temp_min = $json['main']['temp_max'];
    $weather_temp_max = $json['main']['temp_min'];
    $weather_icon = $json['weather'][0]['icon']; 
    $city = $json['name'];
    // Pass SQL QUERY to INSERT SQL statement 
    $qry = "INSERT INTO weather (weather_description, weather_temperature, weather_wind, weather_when, weather_pressure, weather_humidity, weather_main, weather_temp_min, weather_temp_max, weather_icon, city) VALUES('{$weather_description}', {$weather_temperature}, {$weather_wind}, '{$weather_when}', '{$weather_pressure}', '{$weather_humidity}', '{$weather_main}', '{$weather_temp_min}', '{$weather_temp_max}', '{$weather_icon}', '{$city}');"; 
    // Run SQL statement and report errors 
    if ($conn -> query($qry)){
        $sqlquery = "SELECT * FROM weather WHERE weather_when >= DATE_SUB(NOW(), INTERVAL 4000 SECOND) ORDER BY weather_when DESC limit 1;";
        $num= $conn -> query($sqlquery);
        $results=$num->fetch_all(MYSQLI_ASSOC);
        print_r(json_encode($results));
    }
    else{
        echo "Connection failed";
    }
} 
else{
    $sqlquery = "SELECT * FROM weather WHERE weather_when >= DATE_SUB(NOW(), INTERVAL 4000 SECOND) ORDER BY weather_when DESC limit 1;";
        $num= $conn -> query($sqlquery);
        $results=$num->fetch_all(MYSQLI_ASSOC);
        print_r(json_encode($results));
}
?> 

