<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	if(empty($_POST)==false){
		db_update(C);
	}
	$rs = db_find(C,'id='.$_GET['id']);
	
	include('template/header.html');
	include('template/nav_update.html');
	include('template/footer.html');
	