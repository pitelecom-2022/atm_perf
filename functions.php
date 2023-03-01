<?php

function getDistanceBetweenPointsNew($latitude1, $longitude1, $latitude2, $longitude2, $unit = 'miles') {
  $theta = $longitude1 - $longitude2; 
  $distance = (sin(deg2rad($latitude1)) * sin(deg2rad($latitude2))) + (cos(deg2rad($latitude1)) * cos(deg2rad($latitude2)) * cos(deg2rad($theta))); 
  $distance = acos($distance); 
  $distance = rad2deg($distance); 
  $distance = $distance * 60 * 1.1515; 
  switch($unit) { 
    case 'miles': 
      break; 
    case 'kilometers' : 
      $distance = $distance * 1.609344; 
      break;
	case 'nautical_miles':
		$distance = 0.868976 * $distance;
        break;
  } 
  return (round($distance,2) . " " . $unit); 
}

function DMStoDD($deg,$min,$sec)
{

    // Converting DMS ( Degrees / minutes / seconds ) to decimal format
    return $deg+((($min*60)+($sec))/3600);
}

function extract_dd ($coordinates) {
  
  $lat = substr($coordinates,0,7);
  $long = substr($coordinates,-8);

  $lat_deg = substr($lat,0,2);
  $lat_min = substr($lat,2,2);
  $lat_sec = substr($lat,4,2);
  $lat_dir = $lat[-1];

  $long_deg = substr($long,0,3);
  $long_min = substr($long,3,2);
  $long_sec = substr($long,5,2);
  $long_dir = $long[-1];


  $lat_dd = DMStoDD($lat_deg,$lat_min,$lat_sec);
  $long_dd = DMStoDD($long_deg, $long_min, $long_sec);

  if ($lat_dir=="S") {
    $lat_dd = -$lat_dd;
  }

  if ($long_dir=="W") {
    $long_dd= -$long_dd;
  }

  return [$lat_dd, $long_dd];
}

function distance($wp1, $wp2) {

  $wp1_dd = extract_dd($wp1);
  $wp2_dd = extract_dd($wp2);

  return getDistanceBetweenPointsNew($wp1_dd[0], $wp1_dd[1], $wp2_dd[0], $wp2_dd[1], "nautical_miles");
}

