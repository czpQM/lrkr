<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	$title='用户';
	
	if(empty($_POST)==false){
		if(empty($_FILES)==false){
			//var_dump($_FILES);exit;
			foreach($_FILES as $k=>$val){
				$_POST[$k]=Uploadfile($val);
			}
		}
		
		$_POST['login_time']=time();
		// var_dump($_POST);exit;
		
		db_add(C);
	}else{
		include('template/header.html');
		include('template/adminuser_add.html');
		include('template/footer.html');
	}