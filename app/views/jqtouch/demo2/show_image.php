<?php session_start() ?>
<div id="show_image">
<?php 
    if (isset($_REQUEST['_SESSION'])) die("Get lost Dweeb!");
	$fName = $_GET['fName'];
	echo '<a class="slide-right" href="#"><img id="show_pic_id" src="'.$fName.'" BORDER="0"/></a>';
?>
</div>