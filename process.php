
<?php
/*
  error_reporting( E_ALL );
ini_set( "display_errors", 1 );
 */


require_once("./config.php");

$waypoints = $_GET['waypoints'];
$aircraft = $_GET['aircraft'];
$distance  = 0;
$directe = 0;
$coordinates = [];
$mtow = 0;
$output = "";

$query = "SELECT MTOW FROM aircrafts WHERE Type = \"$aircraft\" LIMIT 1";
$stmt = $conn->prepare($query);
$stmt -> execute();

if ($stmt->rowCount()>0) {
	$mtow = $stmt->fetch()['MTOW'];
}

foreach($waypoints as $waypoint) {
    if (strlen($waypoint)>5) {
        $coordinates[] = $waypoint;
    }
    else {
        $sql = "SELECT COORDINATES FROM fir_casa_waypoints WHERE WAYPOINT=\"$waypoint\"";
        $stmt = $conn->prepare($sql);
        $stmt -> execute();
	$coordinates[] = $stmt->fetch()["COORDINATES"];
    }
}

$len = sizeof($coordinates);
$p=1;

while($p<$len) {
	$distance += (float) distance($coordinates[$p],$coordinates[$p-1]);
    $p++;
}

$entry_point = $coordinates[0];
$exit_point  = $coordinates[sizeof($coordinates)-1];

$directe = (float) distance($entry_point, $exit_point);

$weight_factor = round(sqrt($mtow/50),2);
$distance_km = 1.852*$directe;
$distance_km_100 = $distance_km/100;
$uds = round($weight_factor*$distance_km_100,2);
$unit_rate = 39.94;

$output = "<p>Route: ";

foreach ($waypoints as $waypoint) {
	$output .= $waypoint . " - " ;
}

if (!empty($aircraft)) {
	$output .= "</p><p>Aircraft: " . $aircraft . " (<span class='w3-small'>MTOW: " . $mtow . " & Facteur de poids: " . $weight_factor .")</span> </p>";
}

$output .=  "<p>Distance parcourue= " . $distance . " NM</p>";
$output .= "<p>Directe= " . $directe . " NM</p>";
if ($mtow>0) {
	$output .= "<p>UDS = " . $uds ."</p>";
	$output .= "<p>Montant de la redevance = " . round($uds*$unit_rate,2) . "&euro;</p>";
}

else {
}

echo $output;
