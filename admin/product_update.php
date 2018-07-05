<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	$title='产品';
	if(empty($_POST)==false){
		if(empty($_FILES)==false){
			//var_dump($_FILES);exit;
			foreach($_FILES as $k=>$val){
				if(empty($val['name'])==false){
					$_POST['pro_photo'&'pro_photos']=Uploadfile($val);
					
				}
			}
		}
		$_POST['description']=addslashes($_POST['description']);
		$_POST['content']=addslashes($_POST['content']);
		db_update(C);
	}
	$rs = db_find(C,'id='.$_GET['id']);
	
	//$rs['description']=stripslashes($rs['description']);
	//$rs['content']=stripslashes($rs['content']);
	//查询产品分类
	$product_cat = db_select('category',$field='*',$curPage='',$perPage=1,$where='pid=4',$limit='',$admin=1,$order='asc');
	// var_dump($product_cat);exit;
	include('template/header.html');
	include('template/product_update.html');
	include('template/footer.html');