<?php
include("dbconfig.php");

$examp = $_REQUEST["q"]; //query number

$page = $_REQUEST['page']; // get the requested page
$limit = $_REQUEST['rows']; // get how many rows we want to have into the grid
$sidx = $_REQUEST['sidx']; // get index row - i.e. user click to sort
$sord = $_REQUEST['sord']; // get the direction
if(!$sidx) $sidx =1;

$totalrows = isset($_REQUEST['totalrows']) ? $_REQUEST['totalrows']: false;
if($totalrows) {
	$limit = $totalrows;
}


// connect to the database
$db = mysql_pconnect($dbhost, $dbuser, $dbpassword)
or die("Connection Error: " . mysql_error());

mysql_select_db($database) or die("Error conecting to db.");
//populateDBRandom();
$result = mysql_query("SELECT COUNT(*) AS count FROM items");
$row = mysql_fetch_array($result,MYSQL_ASSOC);
$count = $row['count'];

if( $count >0 ) {
	$total_pages = ceil($count/$limit);
} else {
	$total_pages = 0;
}
if ($page > $total_pages) $page=$total_pages;
if ($limit<0) $limit = 0;
$start = $limit*$page - $limit; // do not put $limit*($page - 1)
if ($start<0) $start = 0;
$SQL = "SELECT item_id, item, item_cd FROM items ".$where." ORDER BY $sidx $sord LIMIT $start , $limit";
$result = mysql_query( $SQL ) or die("Couldn’t execute query.".mysql_error());
$responce->page = $page;
$responce->total = $total_pages;
$responce->records = $count;
$i=0;
while($row = mysql_fetch_array($result,MYSQL_ASSOC)) {
	$responce->rows[$i]['id']=$row[item_id];
    $responce->rows[$i]['cell']=array($row[item_id],$row[item],$row[item_cd]);
    $i++;
} 
echo json_encode($responce);
mysql_close($db);

?>
