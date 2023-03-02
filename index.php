<?php
		require_once("./config.php");
		include "./header.php";

		$query = "select Type FROM aircrafts order by Type ASC";
		$stmt = $conn -> prepare($query);
		$stmt->execute();
		$aircrafts = "<select class=\"aircrafts w3-select w3-round w3-border w3-small w3-black w3-padding\">
		<option selected disabled value=\"0\">Selectionner le type d'aéronef</option>";
		while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
			$aircrafts .= "<option>" . $row["Type"] . "</option>";
		}
		$aircrafts .= "</select>";


		$query = "select WAYPOINT FROM fir_casa_waypoints ORDER BY WAYPOINT ASC";
		$stmt = $conn -> prepare($query);
		$stmt->execute();
		$waypoints = "<select class=\"waypoints w3-select w3-round w3-border w3-black w3-small w3-padding\">
		<option selected disabled value=\"0\">Selectionner les waypoints</option>
		<option value=\"wgs-84\">wgs-84</option> ";
		while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
			$waypoints .= "<option>" . $row["WAYPOINT"] . "</option>";
		}
		$waypoints .= "</select>";
		?>
			
		</head>
		<body class="w3-content">
		
			<div class="w3-light-grey w3-section w3-opacity-min" style="height:">
			
			<div class="w3-center">
			<div class="w3-grey w3-container">
				<h4>
					Pole Navigation Aérienne
				<h4>
				<h2>
					Simulateur pour le calcul des distances parcourues et des UDS des vols 
				</h2>
			</div>
			</div>
		<div class="switch w3-border-bottom w3-section">
			<div id="" class="single_switch w3-container w3-border-right">
				<h4>Single Flight</h4>
			</div>
			<div id=""
 class="batch_switch w3-container w3-grey">
				<h4>Batch Flights</h4>
			</div>
		</div>

		<div class="w3-panel batch">
			<form method="POST" action="process_acb.php" enctype="multipart/form-data"> 		
				<label for="rdp_file">ACB file</label> <br>
				<input type="file" name="ACB" id="ACB"><br><br>
				<label for="fdp_file">FFP File</label><br>
				<input type="file" name="FDP"><br><br>
				<input type="submit" class="w3-button w3-blue" value="Process" name="submit">
			</form>
		</div>	
		<div class="single">
		<div class="w3-panel">
			<p>
			<label for="" class="w3-text-blue">Type d'aéronef</label>
			</p>
		  <?= $aircrafts ?>
			</div>
			
			<hr>
			<div class="w3-panel">

		  <label for="route" class="w3-text-blue">Route Empruntée</label>
		  

			</p>
		  <?= $waypoints ?>
		  <p class="w3-small">
			<b>NB:</b> <br>
			<br>
			#1 - Si le waypoint n'est pas un points significatif de l'AIP Maroc (ENR 4.4), saisissez le sous forme <strong>xxyyzzNaaabbccW</strong>
			après avoir sélectionné l'option (wgs-84) dans la liste ci-dessous.<br>
			<br>#2 - L'entry point est le premier waypoint sélectionné. L'exit point est le dernier point sélectionné.<br>
			<br>#3 - La "Directe" est calculée à partir de de l'entry point et l'exit point.
			</p>
						<p class="wgs_84Class w3-brown w3-grey container">

		  <div id="inputText" class="w3-section"></div>

		  <div class="w3-section">
			<p class="w3-center">
			<button id="send" style="width:fit-content" class="w3-button w3-blue">Go!</button>
	  	</p>
		  </div>
	
<div id="id01" class="w3-modal">
  <div class="w3-modal-content">
    <div class="w3-container">
      <span onclick="document.getElementById('id01').style.display='none'"
      class="w3-button w3-display-topright w3-grey w3-button">&times;</span>
	<i class="loading fa fa-spinner w3-spin fa fa-3x w3-large"></i>
      <div class="result w3-padding-64"></div>
    </div>
  </div>
</div>

		</div>		
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
		<script type="text/javascript" src="./app.js"></script>

		</body>
		</html>

