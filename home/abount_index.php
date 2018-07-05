<?php
	//关于我们轮播
	$banner=db_select('banner',$field='*',$curPage='',$perPage=1,$where='`category_id`=2');
	//var_dump($banner);exit;
	
	//关于我们内导航
	$abount=db_select('category',$field='*',$curPage='',$perPage=1,$where='pid=2',$limit='',$admin=1,$order='asc');
	//var_dump($abount);exit;
	
	//获取id
	if(isset($_GET['id'])){
		//查询关于我们的文章
		$id=$_GET['id'];
		$rs=db_find('article',$where='category_id='.$id);
		//var_dump($rs);exit;
	}else{
		$rs=db_find('article',$where='category_id=6');
	}


	include('template/header.html');
	include('template/abount_index.html');
	include('template/footer.html');