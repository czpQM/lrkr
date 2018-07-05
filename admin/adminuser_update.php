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
				if(empty($val['name'])==false){
					$_POST['admin_portrait']=Uploadfile($val);
				}
			}
		}
		db_update(C);
	}
	$rs = db_find(C,'id='.$_GET['id']);
	
	include('template/header.html');
	include('template/adminuser_update.html');
	include('template/footer.html');
	