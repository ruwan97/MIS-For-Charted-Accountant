<?php
	$cid=$_GET['cid'];
	include('../connection.php');
	mysqli_query($con,"delete from `2019_bus` where cid='$cid'");
    
	header('location:admin-dash.php');
?>