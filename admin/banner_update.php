<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	if(empty($_POST)==false){
		if(empty($_FILES)==false){
			// var_dump($_FILES);exit;
			foreach($_FILES as $k=>$val){
				$_POST[$k]=Uploadfile($val);
				
			}
		}
		db_update(C);
	}
	$rs = db_find(C,'id='.$_GET['id']);
		//查询产品分类
		$banner_cat = db_select('category',$field='*',$curPage='',$perPage=1,$where='pid=0',$limit='',$admin=1,$order='asc');
	
	include('template/header.html');
	include('template/banner_update.html');
	include('template/footer.html');
	