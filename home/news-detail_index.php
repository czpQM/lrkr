<?php
	//详情页上篇
	$last=db_select('news',$field='*',$curPage='',$perPage=1,$where='id<'.$_GET['id'].' && category_id='.$_GET["category_id"].'',$limit='',$admin=1,$order='desc');
	//var_dump($last);exit;
	//详情页下篇
	$next=db_select('news',$field='*',$curPage='',$perPage=1,$where='id>'.$_GET['id'].' && category_id='.$_GET["category_id"].'',$limit='',$admin=1,$order='asc');
	//var_dump($_GET);exit;
	
	//新闻详情轮播
	$banner=db_select('banner',$field='*',$curPage='',$perPage=1,$where='`category_id`=3');
	//var_dump($banner);exit;
	
	//显示新闻详情
	$id=$_GET['id'];
	$rs=db_find('news',$where='id='.$id);
	//var_dump($rs);exit;
	

	
	//新闻中心内导航
	$news=db_select('category',$field='*',$curPage='',$perPage=1,$where='pid=3',$limit='',$admin=1,$order='asc');
	//var_dump($abount);exit;


	
	include('template/header.html');
	include('template/news-detail_index.html');
	include('template/footer.html');