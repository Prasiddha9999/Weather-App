<?php
$servername = "localhost";
$username = "root";
$password = "";
$databasename = "db_2059789";

$conn = new mysqli($servername, $username, $password, $databasename);

if ($conn->connect_errno) die("<h1>Connection Failed</h1> <p>$conn->connect_error</p>");


?>
