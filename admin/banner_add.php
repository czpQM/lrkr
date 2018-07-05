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
		// var_dump($_POST);exit;
		db_add(C);
	}else{
		//查询产品分类
		$banner_cat = db_select('category',$field='*',$curPage='',$perPage=1,$where='pid=0',$limit='',$admin=1,$order='asc');
		include('template/header.html');
		include('template/banner_add.html');
		include('template/footer.html');
	}