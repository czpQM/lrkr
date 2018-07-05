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
				$_POST[$k]=Uploadfile($val);
				
			}
		}
		//var_dump($_POST);exit;
		if(empty($_POST['addtime'])){
			$_POST['addtime']=time();
		}else{
			$_POST['addtime']=strtotime($_POST['addtime']);
		}
		//var_dump($_POST);exit;
		
		$_POST['content']=addslashes($_POST['content']);
		db_add(C);
	}else{
		// $rs['content']=stripslashes($rs['content']);
		//查询产品分类
		$product_cat = db_select('category',$field='*',$curPage='',$perPage=1,$where='pid=4',$limit='',$admin=1,$order='asc');
		// var_dump($product_cat);exit;
		include('template/header.html');
		include('template/product_add.html');
		include('template/footer.html');
	}