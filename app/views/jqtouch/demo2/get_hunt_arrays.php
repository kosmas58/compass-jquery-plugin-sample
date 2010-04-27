<?php session_start() ?>
<?php
	$item = $_GET['item'];
	$return_arr = array(); 
	$return_arr[0] = 'Any';
	$return_arr[1] = 'Some';
	$return_arr[2] = 'Test';
	$return_arr[3] = 'Hello';
	$return_arr[4] = 'Goodbye';
	if ($item == 'type') {
		
	} else if ($item == 'facility') {
		
	} else if ($item == 'style') {

	}
	echo json_encode($return_arr);
?>