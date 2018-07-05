<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	$title='数据';
	if(empty($_POST)==false){
		db_add(C);
	}else{
		include('template/header.html');
		include('template/setup_add.html');
		include('template/footer.html');
	}