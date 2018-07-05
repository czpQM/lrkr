<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	$title='新闻';
	if(empty($_POST)==false){
		if(empty($_FILES)==false){
			//var_dump($_FILES);exit;
			foreach($_FILES as $k=>$val){
				$_POST['news_photo']=Uploadfile($val);
			}
		}
		
		$_POST['content']=addslashes($_POST['content']);
		
		if(empty($_POST['ftime'])){
			$_POST['ftime']=time();
		}else{
			$_POST['ftime']=strtotime($_POST['ftime']);
		}
		// var_dump($_POST);exit;
		
		db_add(C);
	}else{
		//$rs['content']=stripslashes($rs['content']);
		//查询新闻分类
		$news_cat = db_select('category',$field='*',$curPage='',$perPage=1,$where='pid=3',$limit='',$admin=1,$order='asc');
		// var_dump($news_cat);exit;
		include('template/header.html');
		include('template/news_add.html');
		include('template/footer.html');
	}
