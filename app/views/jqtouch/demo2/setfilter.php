<?php session_start() ?>
<?php
	$stat = (int)$_GET['filter'];
	$result = 0;
	$filter = "";
	$filterId = 0;
	$return_arr = array(); 
	if ($stat == 1) {
			$_SESSION['roomFilterId'] = $_SESSION['tempRoomFilterId'];
			$filterId = $_SESSION['roomFilterId'];
			$result = $stat;
			$filter='Room';
	} else if ($stat == 2) {
			$_SESSION['artistFilterId'] = $_SESSION['tempArtistFilterId'];
			$filterId = $_SESSION['artistFilterId'];
			$result = $stat;
			$filter = 'Artist';
	} else if ($stat == 3) {
			$_SESSION['typeFilterId'] = $_SESSION['tempTypeFilterId'];
			$filterId = $_SESSION['typeFilterId'];
			$result = $stat;
			$filter = 'Artwork';
	} else if ($stat == 4) {
			$_SESSION['styleFilterId'] = $_SESSION['tempStyleFilterId'];
			$filterId = $_SESSION['styleFilterId'];
			$result = $stat;
			$filter = 'Style';
	}
	$_SESSION['filterStatus'] = $result; 
	$return_arr["result"] = $result;
	$return_arr["filter"] = $filter;
	$return_arr["filterId"] = $filterId;
	echo json_encode($return_arr);
?>