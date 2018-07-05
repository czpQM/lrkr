<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	$title='分类';
	if(empty($_POST)==false){
		db_add(C);
	}else{
		include('template/header.html');
		include('template/category_add.html');
		include('template/footer.html');
	}