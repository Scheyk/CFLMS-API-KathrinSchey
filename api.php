<?php

	$host = "localhost";
	$user = "root";
	$pw = "";
	$db_name = "cr10_kathrinschey_biglibrary";

	$conn = mysqli_connect($host,$user,$pw,$db_name);

	if(!$conn) {
		echo "error!";
	} 


	$sql = "SELECT * FROM `media` WHERE `status` = 'available'";
	$go = mysqli_query($conn, $sql);


	$row = $go->fetch_all(MYSQLI_ASSOC);

	foreach ($go as $value) {
		echo "<p>".$value['title']."</p><img src=".$value['img']."><br>";
		
	}

	
?>