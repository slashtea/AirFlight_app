<?php

// This file contains db connection class.

	$db = new mysqli('127.0.0.1', 'root', 'Australia4ever', 'AirFlight_App');
    if($db->connect_errno) {
    	die("Sorry we're having some problems");
    }
?>