<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	$title='数据';
	if(empty($_POST)==false){
		db_update(C);
	}
	$rs = db_find(C,'id='.$_GET['id']);
	
	include('template/header.html');
	include('template/setup_update.html');
	include('template/footer.html');
	