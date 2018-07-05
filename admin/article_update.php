<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	if(empty($_POST)==false){
		// var_dump($_POST);exit;
		$_POST['content'] = addslashes($_POST['content']);
		
		db_update(C);
	}
	
	//查询文章分类
	$article_cat=db_select('category',$field='*',$curPage='',$perPage=1,$where='pid=2',$limit='',$admin=1,$order='asc');
	// var_dump($article_cat);exit;
	
	$rs = db_find(C,'id='.$_GET['id']);
	// var_dump($rs);exit;
	include('template/header.html');
	include('template/article_update.html');
	include('template/footer.html');
	