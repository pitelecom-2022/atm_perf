<?php

include "./functions.php";

$servername = "localhost";
$username = "cron";
$password = "7svaw9bz4lnr";

try {
  $conn = new PDO("mysql:host=$servername;dbname=gmmm_waypoints", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}
