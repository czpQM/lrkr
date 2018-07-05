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
				if(empty($val['name'])==false){
					$_POST['news_photo']=Uploadfile($val);
				}
			}
		}
		
		$_POST['description']=addslashes($_POST['description']);
		$_POST['content']=addslashes($_POST['content']);
		db_update(C);
	}
	$rs = db_find('news','id='.$_GET['id']);
	$rs['ftime']=date('Y-m-d',$rs['ftime']);
	$rs['description']=stripslashes($rs['description']);
	$rs['content']=stripslashes($rs['content']);
	
	//查询新闻分类
	$news_cat = db_select('category',$field='*',$curPage='',$perPage=1,$where='pid=3',$limit='',$admin=1,$order='asc');
	include('template/header.html');
	include('template/news_update.html');
	include('template/footer.html');