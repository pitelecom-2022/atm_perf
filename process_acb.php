
<?php

include "./config.php";
include "./header.php";

if (isset($_POST["submit"])) {

    // Récupérer les fichier ACB & FDP et les stocker dans le fichier uploads

    $target_dir = "uploads/";
    //$acb_target_file = $target_dir . basename($_FILES["ACB"]["name"]);
    $acb_target_file = $target_dir . basename($_FILES["ACB"]["name"]);
    
    //$fdp_target_file = $target_dir . basename($_FILES["FDP"]["name"]);
    $fdp_target_file = $target_dir . "fdp.csv";
    
    if ($_FILES["ACB"]["size"]>0) {
        if(!move_uploaded_file($_FILES["ACB"]["tmp_name"],$acb_target_file) )  {
            echo "Upload failed. Please ask you administrator !!";
        }
    }
    
    if ($_FILES["FDP"]["size"]>0) {
        if (!move_uploaded_file($_FILES["FDP"]["tmp_name"], $fdp_target_file) ) {
            echo "There was a problem while moving the uploaded file!!";
        }
    }
    // Variables 
    $distance = 0;
    $output = "";
    $flights = 0;
    $directes = 0;

    // Traitement du fichier ACB (csv)
    if (($handle = fopen("./uploads/acb.csv", "r")) !== FALSE) {
        while (($data = fgetcsv($handle, 1024, ";")) !== FALSE) {
		
            if (strlen($data[1]) >0 ) {
                if ( strlen($data[22]) == 0 ){
                    $directes ++;
                }
                $flights++;
                $distance += (int) $data[16];
            }

            /*
            for ($c=0; $c < $num; $c++) {
                echo $data[$c] . "<br />\n";
            }
            */
        }
        fclose($handle);
    }

    $distance = number_format($distance, 0, " ", " ");

    $output .= "<p>Total des vols: " .  $flights . "<br></p>";

    $output .= "<p>Routes directes: " . $directes . " </p>";

    $output .= "<p> % des routes directes: " . round(100*$directes/$flights,2) . "</p>";

    $output .= "<p> Total distance parcourue par tous les vols: " . $distance . " NM";    

    //echo $output;
}




?>


<div class="" style="  width:75%;
  margin: 128px auto;
  opacity: 0.85;
  background-color: white;;
  font-weight: 700;">

    <div class="w3-container w3-section" style="margin-bottom:24px">
        <a href="http://dev.navigation.ma" style="text-decoration: none; font-weight:400">
            <i class="fa fa-home w3-margin-right"></i> Home 
        </a>
    </div>
    <hr>

    <div class="w3-container">
    <h3>General Stats</h3>
    </div>


    <div class="w3-row-padding w3-opacity-min w3-white w3-padding-64">

    
        <div class="w3-quarter w3-padding">
            <div class="w3-light-grey w3-padding">
            <p>
                Nombre de vols effectués
            </p>
            <div class="w3-large">
                <?= number_format($flights, 0," ", " ") ?>
            </div>
            </div>
  

        </div>

        <div class="w3-quarter w3-padding">
        <div class="w3-light-grey w3-padding">

            <p>
                    Nombre de directes
                </p>
                <div class="w3-large">
                <?= number_format($directes, 0, " ", " ") ?>

            </div>
</div>
        </div>
        
        <div class="w3-quarter w3-padding">
            <div class="w3-light-grey w3-padding">
            <p>
                % des vols routes directes
            </p>
            <div class="w3-large">
                <?= number_format(100*$directes/$flights,2,".", " ") ?>
            </div>
            </div>
      

        </div>

        <div class="w3-quarter w3-padding">
            <div class="w3-light-grey w3-padding">
            <p>
                Total NM parcourue dans la FIR Casablanca
            </p>
            <div class="w3-large">
                <?= $distance . " NM" ?>
            </div>
            </div>

        </div>

    </div>

    <div class="w3-container">
    <h3>Indicateurs de perf (<span class="w3-medium">Réglement 317</span>)</h3>
    </div>

    <div class="w3-row-padding w3-opacity-min w3-white w3-padding-16">

    
<div class="w3-half w3-padding">
    <div class="w3-light-grey w3-padding">
    <p>
        Indicateur de perf #1 (vs Flight Plans)
    </p>
    <div class="w3-large">
    </div>
    </div>


</div>

<div class="w3-half w3-padding">
<div class="w3-light-grey w3-padding">

    <p>
        Indicateur de perf #2 (shortest)        
    </p>
        <div class="w3-large">
        </div>
</div>
</div>


</div>





