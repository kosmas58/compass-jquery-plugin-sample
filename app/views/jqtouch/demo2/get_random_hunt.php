<?php session_start() ?>
<?php
	$return;
	$return["id"] = 1;
	$return["picture"] = "museum_startup.png";
	$return["room"] = 1;
	echo json_encode($return);
?>