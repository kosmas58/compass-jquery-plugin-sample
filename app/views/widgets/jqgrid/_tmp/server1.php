<?php
include("dbconfig.php");

$examp = $_REQUEST["q"]; //query number

$page = $_REQUEST['page']; // get the requested page
$limit = $_REQUEST['rows']; // get how many rows we want to have into the grid
$sidx = $_REQUEST['sidx']; // get index row - i.e. user click to sort
$sord = $_REQUEST['sord']; // get the direction

$totalrows = isset($_REQUEST['totalrows']) ? $_REQUEST['totalrows']: false;
if($totalrows) {
	$limit = $totalrows;
}

if(!$sidx) $sidx =1;
// connect to the database
$db = mysql_connect($dbhost, $dbuser, $dbpassword)
or die("Connection Error: " . mysql_error());

mysql_select_db($database) or die("Error conecting to db.");

switch ($examp) {
    case 2:
		$result = mysql_query("SELECT COUNT(*) AS count FROM invheader a, clients b WHERE a.client_id=b.client_id".$wh);
		$row = mysql_fetch_array($result,MYSQL_ASSOC);
		$count = $row['count'];

		if( $count >0 ) {
			$total_pages = ceil($count/$limit);
		} else {
			$total_pages = 0;
		}
        if ($page > $total_pages) $page=$total_pages;	
		$start = $limit*$page - $limit; // do not put $limit*($page - 1)
        if ($start<0) $start = 0;
        $SQL = "SELECT a.id, a.invdate, b.name, a.amount,a.tax,a.total,a.note FROM invheader a, clients b WHERE a.client_id=b.client_id".$wh." ORDER BY name asc,".$sidx." ".$sord. " LIMIT ".(int)$start." , ".(int)$limit;
		$result = mysql_query( $SQL ) or die("Could not execute query.".mysql_error());
        $responce->page = $page;
        $responce->total = $total_pages;
        $responce->records = $count;
        $i=0;
	while($row = mysql_fetch_array($result,MYSQL_ASSOC)) {
		$responce->rows[$i]['id']=$row[id];
        	$responce->rows[$i]['cell']=array($row[id],$row[invdate],$row[name],$row[amount],$row[tax],$row[total],$row[note]);
           	$i++;
	}
        echo json_encode($responce);
           
        break;
    case 3:
		$result = mysql_query("SELECT COUNT(*) AS count FROM invheader a, clients b WHERE a.client_id=b.client_id".$wh);
		$row = mysql_fetch_array($result,MYSQL_ASSOC);
		$count = $row['count'];

		if( $count >0 ) {
			$total_pages = ceil($count/$limit);
		} else {
			$total_pages = 0;
		}
        if ($page > $total_pages) $page=$total_pages;
		$start = $limit*$page - $limit; // do not put $limit*($page - 1)
        if ($start<0) $start = 0;
        $SQL = "SELECT a.id, a.invdate, b.name, a.amount,a.tax,a.total,a.note FROM invheader a, clients b WHERE a.client_id=b.client_id".$wh." ORDER BY ".$sidx." ".$sord. " LIMIT ".$start." , ".$limit;
		$result = mysql_query( $SQL ) or die("Couldn’t execute query.".mysql_error());
        $responce->page = $page;
        $responce->total = $total_pages;
        $responce->records = $count;
        $i=0;
		while($row = mysql_fetch_array($result,MYSQL_ASSOC)) {
			$responce->rows[$i]['id']=$row[id];
            $responce->rows[$i]['cell']=array("",$row[id],$row[invdate],$row[name],$row[amount],$row[tax],$row[total],$row[note]);
            $i++;
		} 
		//echo $json->encode($responce); // coment if php 5
        echo json_encode($responce);
           
        break;
    case 4:
		$result = mysql_query("SELECT COUNT(*) AS count FROM invheader a, clients b WHERE a.client_id=b.client_id".$wh);
		$row = mysql_fetch_array($result,MYSQL_ASSOC);
		$count = $row['count'];
		if( $count >0 ) {
			$total_pages = ceil($count/$limit);
		} else {
			$total_pages = 0;
		}
        if ($page > $total_pages) $page=$total_pages;
		$start = $limit*$page - $limit; // do not put $limit*($page - 1)
        if ($start<0) $start = 0;
        $SQL = "SELECT a.id, a.invdate, b.name, a.amount,a.tax,a.total,a.note FROM invheader a, clients b WHERE a.client_id=b.client_id".$wh." ORDER BY ".$sidx." ".$sord. " LIMIT ".$start." , ".$limit;
		$result = mysql_query( $SQL ) or die("Couldnt execute query.".mysql_error());
        $responce->page = $page;
        $responce->total = $total_pages;
        $responce->records = $count;
        $i=0;
		while($row = mysql_fetch_array($result,MYSQL_ASSOC)) {
            $responce->rows[$i]=$row;
            $i++;
		} 
		//echo $json->encode($responce); // coment if php 5
        echo json_encode($responce);
           
        break;
    case 5:
		$result = mysql_query("SELECT COUNT(*) AS count FROM invheader a, clients b WHERE a.client_id=b.client_id".$wh);
		$row = mysql_fetch_array($result,MYSQL_ASSOC);
		$count = $row['count'];

		if( $count >0 ) {
			$total_pages = ceil($count/$limit);
		} else {
			$total_pages = 0;
		}
        if ($page > $total_pages) $page=$total_pages;
		$start = $limit*$page - $limit; // do not put $limit*($page - 1)
        if ($start<0) $start = 0;
        $SQL = "SELECT a.id, a.invdate, b.name, a.amount,a.tax,a.total,a.note FROM invheader a, clients b WHERE a.client_id=b.client_id".$wh." ORDER BY ".$sidx." ".$sord. " LIMIT ".$start." , ".$limit;
		$result = mysql_query( $SQL ) or die("Couldn’t execute query.".mysql_error());
        $responce->page = $page;
        $responce->total = $total_pages;
        $responce->records = $count;
        $i=0;
		while($row = mysql_fetch_array($result,MYSQL_ASSOC)) {
            $responce->rows[$i]=$responce->rows[$i]['cell']=array($row[id],$row[invdate],$row[name],$row[amount],$row[tax],$row[total],$row[note]);
            $i++;
		} 
		//echo $json->encode($responce); // coment if php 5
        echo json_encode($responce);
           
        break;
    case 'tree':
		$node = (integer)$_REQUEST["nodeid"];
		// detect if here we post the data from allready loaded tree
		// we can make here other checks
		if( $node >0) {
			$n_lft = (integer)$_REQUEST["n_left"];
			$n_rgt = (integer)$_REQUEST["n_right"];
			$n_lvl = (integer)$_REQUEST["n_level"];
			
			$n_lvl = $n_lvl+1;
	       	$SQL = "SELECT account_id, name, acc_num, debit, credit, balance, level, lft, rgt FROM accounts WHERE lft > ".$n_lft." AND rgt < ".$n_rgt." AND level = ".$n_lvl." ORDER BY lft";
		} else { 
			// initial grid
        	$SQL = "SELECT account_id, name, acc_num, debit, credit, balance, level, lft, rgt FROM accounts WHERE level=0 ORDER BY lft";
        }
		$result = mysql_query( $SQL ) or die("Couldn t execute query.".mysql_error());
		if ( stristr($_SERVER["HTTP_ACCEPT"],"application/xhtml+xml") ) {
  		header("Content-type: application/xhtml+xml;charset=utf-8"); } else {
  		header("Content-type: text/xml;charset=utf-8");
		}
	  	$et = ">";
  		echo "<?xml version='1.0' encoding='utf-8'?$et\n";
		echo "<rows>";
		echo "<page>1</page>";
		echo "<total>1</total>";
		echo "<records>1</records>";
		// be sure to put text data in CDATA
		while($row = mysql_fetch_array($result,MYSQL_ASSOC)) {
			echo "<row>";			
			echo "<cell>". $row[account_id]."</cell>";
			echo "<cell>". $row[name]."</cell>";
			echo "<cell>". $row[acc_num]."</cell>";
			echo "<cell>". $row[debit]."</cell>";
			echo "<cell>". $row[credit]."</cell>";
			echo "<cell>". $row[balance]."</cell>";
			echo "<cell>". $row[level]."</cell>";
			echo "<cell>". $row[lft]."</cell>";
			echo "<cell>". $row[rgt]."</cell>";
			if($row[rgt] == $row[lft]+1) $leaf = 'true';else $leaf='false';
			echo "<cell>".$leaf."</cell>";
			echo "<cell>false</cell>";
			echo "</row>";
		}
		echo "</rows>";		
        break;
    case 'tree2':
		$node = (integer)$_REQUEST["nodeid"];
		// detect if here we post the data from allready loaded tree
		// we can make here other checks
		if( $node >0) {
			$n_lft = (integer)$_REQUEST["n_left"];
			$n_rgt = (integer)$_REQUEST["n_right"];
			$n_lvl = (integer)$_REQUEST["n_level"];
			
			$n_lvl = $n_lvl+1;
	       	$SQL = "SELECT account_id, name, acc_num, debit, credit, balance, level, lft, rgt FROM accounts WHERE lft > ".$n_lft." AND rgt < ".$n_rgt." AND level = ".$n_lvl." ORDER BY lft";
		} else { 
			// initial grid
        	$SQL = "SELECT account_id, name, acc_num, debit, credit, balance, level, lft, rgt FROM accounts WHERE 0=0 ORDER BY lft";
        }
		$result = mysql_query( $SQL ) or die("Couldn t execute query.".mysql_error());
		if ( stristr($_SERVER["HTTP_ACCEPT"],"application/xhtml+xml") ) {
  		header("Content-type: application/xhtml+xml;charset=utf-8"); } else {
  		header("Content-type: text/xml;charset=utf-8");
		}
	  	$et = ">";
  		echo "<?xml version='1.0' encoding='utf-8'?$et\n";
		echo "<rows>";
		echo "<page>1</page>";
		echo "<total>1</total>";
		echo "<records>1</records>";
		// be sure to put text data in CDATA
		while($row = mysql_fetch_array($result,MYSQL_ASSOC)) {
			echo "<row>";			
			echo "<cell>". $row[account_id]."</cell>";
			echo "<cell>". $row[name]."</cell>";
			echo "<cell>". $row[acc_num]."</cell>";
			echo "<cell>". $row[debit]."</cell>";
			echo "<cell>". $row[credit]."</cell>";
			echo "<cell>". $row[balance]."</cell>";
			echo "<cell>". rand(0,1)."</cell>";
			echo "<cell>". $row[level]."</cell>";
			echo "<cell>". $row[lft]."</cell>";
			echo "<cell>". $row[rgt]."</cell>";
			if($row[rgt] == $row[lft]+1) $leaf = 'true';else $leaf='false';
			echo "<cell>".$leaf."</cell>";
			echo "<cell>true</cell>";
			echo "</row>";
		}
		echo "</rows>";		
        break;
	case 'tree3' :
		$SQLL = "SELECT t1.account_id FROM accounts t1 LEFT JOIN accounts t2 ON t1.account_id = t2.parent_id WHERE t2.account_id IS NULL";
		$resultl = mysql_query( $SQLL ) or die("Couldn t execute query.".mysql_error());
		$leafnodes = array();
		while($rw = mysql_fetch_array($resultl,MYSQL_ASSOC)) {
			$leafnodes[$rw[account_id]] = $rw[account_id];
		}

		$node = (integer)$_REQUEST["nodeid"];
		$n_lvl = (integer)$_REQUEST["n_level"];
		if ( stristr($_SERVER["HTTP_ACCEPT"],"application/xhtml+xml") ) {
	  		header("Content-type: application/xhtml+xml;charset=utf-8"); } else {
	  		header("Content-type: text/xml;charset=utf-8");
		}
		$et = ">";
		echo "<?xml version='1.0' encoding='utf-8'?$et\n";
		echo "<rows>";
		echo "<page>1</page>";
		echo "<total>1</total>";
		echo "<records>1</records>";
		if($node >0) {
			$wh = 'parent_id='.$node;
			// we ouput the next level
			$n_lvl = $n_lvl+1;
		} else {
			$wh = 'ISNULL(parent_id)';
			//$level = 0;
		}
		$SQL = "SELECT account_id, name, acc_num, debit, credit, balance, parent_id FROM accounts WHERE ".$wh;
		$result = mysql_query( $SQL ) or die("Couldn t execute query.".mysql_error());
		while($row = mysql_fetch_array($result,MYSQL_ASSOC)) {
			echo "<row>";			
			echo "<cell>". $row[account_id]."</cell>";
			echo "<cell>". $row[name]."</cell>";
			echo "<cell>". $row[acc_num]."</cell>";
			echo "<cell>". $row[debit]."</cell>";
			echo "<cell>". $row[credit]."</cell>";
			echo "<cell>". $row[balance]."</cell>";
			echo "<cell>". $n_lvl."</cell>";
			if(!$row[parent_id]) $valp = 'NULL'; else $valp = $row[parent_id]; 
			echo "<cell><![CDATA[".$valp."]]></cell>";
			if($row[account_id] == $leafnodes[$row[account_id]]) $leaf='true'; else $leaf = 'false';
			echo "<cell>".$leaf."</cell>";
			echo "<cell>false</cell>";
			echo "</row>";
		}
		echo "</rows>";
		break;
}
mysql_close($db);

function Strip($value)
{
	if(get_magic_quotes_gpc() != 0)
  	{
    	if(is_array($value))  
			if ( array_is_associative($value) )
			{
				foreach( $value as $k=>$v)
					$tmp_val[$k] = stripslashes($v);
				$value = $tmp_val; 
			}				
			else  
				for($j = 0; $j < sizeof($value); $j++)
        			$value[$j] = stripslashes($value[$j]);
		else
			$value = stripslashes($value);
	}
	return $value;
}
function array_is_associative ($array)
{
    if ( is_array($array) && ! empty($array) )
    {
        for ( $iterator = count($array) - 1; $iterator; $iterator-- )
        {
            if ( ! array_key_exists($iterator, $array) ) { return true; }
        }
        return ! array_key_exists(0, $array);
    }
    return false;
}
?>
