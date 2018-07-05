<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	if(empty($_POST)==false){
		db_add(C);
	}else{
		include('template/header.html');
		include('template/nav_add.html');
		include('template/footer.html');
	}