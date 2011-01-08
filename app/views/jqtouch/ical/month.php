<!--
	#####################################################################
	
	jQTouch iCal, alpha
	@created by 
		Bruno Alexandre, 26.03.2010
		twitter.com/balexandre
		balexandre.com
		bruno.in.dk [at] gmail.com
	
	#####################################################################
	
	This is a static Month Calendar, just use your favorite
	  language to create the calendar dynamically.
	
	Just read the QueryString values for:
		Month (month) and Year (year)
	
	######################################################################
-->
<?php
	ini_set('display_errors', true);
	ini_set('html_errors', true);
?>
<?php 
	$month = $_REQUEST['month'];
	$year  = $_REQUEST['year'];
	
	$firstDay   = date('d-m-Y', strtotime('01-'.$month.'-'.$year));
	$firstDayWeek = date('N', strtotime($firstDay)); 
		
	$monthName   = date('F', strtotime($firstDay));
	$lastMonday  = date('d-m-Y', strtotime('last Monday', strtotime($firstDay)));
	
	$lastDayDay  = date('t', strtotime($firstDay));	
	$lastDay     = date('d-m-Y', strtotime($lastDayDay.'-'.$month.'-'.$year));
	$lastDayWeek = date('N', strtotime($lastDay));
?>
<?php
	/*
	echo 'month: ' . $month . '<br>';
	echo 'year: ' . $year . '<br><br>';
	echo 'lastMonday: ' . $lastMonday . '<br>';
	echo '1st day: ' . $firstDay . '<br>';
	echo 'last day day: ' . $lastDayDay . '<br>';	
	echo 'last day: ' . $lastDay . '<br>';
	echo 'name: ' . $monthName . '<br>';
	echo 'first Day Week: ' . $firstDayWeek . '<br>';
	echo 'last Day Week: ' . $lastDayWeek . '<br>';
	//*/
?>
<?php

	// ######################################### Days
	// Prepare Array
	$days = array();
	
	// Add all days into Array
	for($d = 1; $d <= $lastDayDay; $d++) {
		$day = date('d-m-Y', strtotime('+'.($d - 1).' day', strtotime($firstDay)));
		array_insert($days, array('day' => $day, 'type' => 'normal'));		
	}
	
	// Fill array with Previous month Days
	$index = 0; $done = false;
	if($firstDayWeek != 1)	// 1: Monday	
		while($done == false) {
		
			$d = date('d-m-Y', strtotime('+'.$index.' day', strtotime($lastMonday)));		
			$n = date('n', strtotime($d));
			array_insert($days, array('day' => $d, 'type' => 'prevmonth'), $index);
			$index++;
			
			if($index+1 == $firstDayWeek)
				$done = true;
			
		}
		
	// Fill array with Next month Days
	$index = 1; $done = false;
	if($lastDayWeek != 7)	// 7: Sunday
		while($done == false) {
		
			$nextDay = date('d-m-Y', strtotime('+'.$index.' day', strtotime($lastDay)));
			array_insert($days, array('day' => $nextDay, 'type' => 'nextmonth'));
			$index++;
			
			if(($index - 1 + $lastDayWeek) == 7)
				$done = true;			
		}
	
	// Array is done, all we need to do now is echo it	
	
	// ######################################### Events
	$events = array(
				"02-02-2010",
				"04-02-2010",
				"12-03-2010",
				"21-03-2010",
				"04-04-2010",
				"08-04-2010",
				"25-04-2010",
				"11-05-2010",
				"12-05-2010",
				"19-06-2010",
				"20-06-2010"); 

?>
<input type="hidden" id="month" value="<?php echo $month; ?>" />
<input type="hidden" id="year" value="<?php echo $year; ?>" />
<table cellspacing="0"> 
	<thead> 
		<!-- Header -->
		<tr> 
			<th class="goto-prevmonth">Mon</th><th>Tue</th><th>Wed</th> 
			<th><span><?php echo $monthName . ' ' . $year; ?></span>Thu</th><th>Fri</th><th>Sat</th> 
			<th class="goto-nextmonth">Sun</th> 
		</tr> 
	</thead> 
	<tfoot> 
		<!-- Footer -->
		<tr>
			<th colspan="7">&nbsp;</th> 
		</tr>
	</tfoot> 
	<tbody> 
		<!-- Row 1 -->
		<tr>
		<?php 
			$iRow = 1;
			$iCell = 0;
			$inMonth = false;
			
			foreach ($days as $index => $value)
			{
				
				if($iCell % 7 == 0 && $iCell != 0) // create new row
				{
					$iRow++;
		?></tr>
		<!-- Row <?php echo $iRow; ?>-->
		<tr><?php
				}
				
				$vday = $value['day'];
				$vtype = $value['type'];
			
				echo writeTD($vday, $vtype, $events);
			
				$iCell++;		
			}
		?>
		</tr>
	</tbody>
</table> 
<!-- Events -->
<ul class="events">
</ul>
<!-- Bottom toolbar -->
<ul class="bottom-bar">
	<li class="bottom-bar-today"></li>
	<li class="bottom-bar-list" onclick="alert('list');"></li>
	<li class="bottom-bar-day" onclick="alert('day');"></li>
	<li class="bottom-bar-month" onclick="alert('month');"></li>
</ul>
<?php	
	/**
	 * Writes a Cell of the calendar
	 *
	 * @author Bruno Alexandre
	 * @param $day to be written, $type of the day to add the css class
	 * @return the entire <td> tag
	 */
	function writeTD($day, $type, $events)
	{
		$passedDate = date('d-m-Y', strtotime($day));
		$dayToWrite = date('j', strtotime($day));
		$eventDay = false;
		$class = '';
		
		// event day?
		if(in_array($passedDate, $events) == true)
			$eventDay = true;
		
		if($type == 'normal' && $eventDay == true)
			$class = ' class="date_has_event"';
		elseif($type != 'normal' && $eventDay == false)
			$class = ' class="'.$type.'"';
		elseif($type != 'normal' && $eventDay == true)
			$class = ' class="'.$type.' date_has_event"';
			
		return '<td'.$class.'>'.$dayToWrite.'<input type="hidden" value="'.$passedDate.'" /></td>';
	}
	/**
	 * Inserts an object into an Array
	 *
	 * @author http://www.justin-cook.com/wp/2006/08/02/php-insert-into-an-array-at-a-specific-position/
	 * @param $array, $insert object to be insert, $position of the array
	 * @return true or die if invalid
	 */
	function array_insert(&$array, $insert, $position = -1) { 
		 $position = ($position == -1) ? (count($array)) : $position ; 
		 if($position != (count($array))) { 
		      $ta = $array; 
		      for($i = $position; $i < (count($array)); $i++) { 
		           if(!isset($array[$i])) { 
		                die(print_r($array, 1)."\r\nInvalid array: All keys must be numerical and in sequence."); 
		           } 
		           $tmp[$i+1] = $array[$i]; 
		           unset($ta[$i]); 
		      } 
		      $ta[$position] = $insert; 
		      $array = $ta + $tmp; 
		      //print_r($array); 
		 } else { 
		      $array[$position] = $insert; 
		 } 
		
		ksort($array); 
		return true; 
	}	
?>