<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	//查询文章分类
	$article_cat=db_select('category',$field='*',$curPage='',$perPage=1,$where='pid=2',$limit='',$admin=1,$order='asc');
	// var_dump($article_cat);exit;
	
	if(empty($_POST)==false){
		db_add(C);
	}else{
		$category=db_select('category','*','',1,'pid=1');
		include('template/header.html');
		include('template/article_add.html');
		include('template/footer.html');
	}