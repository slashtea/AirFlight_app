<?php 
	header('Content-type: text/Javascript');
?>

<?php

	require '../includes/connect.php';

	$result = $db->query("SELECT * FROM  airports");

	// Check the result print_r($result);

	$Airports = array();
	$Airports_data = array();

	if($result->num_rows) {

		while($rows = $result->fetch_assoc()) {
			$Airports_data[] = $rows;	
 		}
	
 	// echo json_encode($Airports_data);	

 	// $Airports['Airports_data'] = $Airports_data;

 	$fp = fopen('../Airports.json', 'w') or die("Can't open file");
 	fwrite($fp, json_encode($Airports_data));
	
	} else {
		die("Database error");
	}
?>