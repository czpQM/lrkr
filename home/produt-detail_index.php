<?php
	//产品详情轮播
	$banner=db_select('banner',$field='*',$curPage='',$perPage=1,$where='`category_id`=4');
	//var_dump($banner);exit;
	
	//产品中心内导航
	$produt=db_select('category',$field='*',$curPage='',$perPage=1,$where='pid=4',$limit='',$admin=1,$order='asc');
	//var_dump($produt);exit;

	$id=$_GET['id'];
	$rs=db_find('product','id='.$id.'');
	// var_dump($rs);exit;
	include('template/header.html');
	include('template/produt-detail_index.html');
	include('template/footer.html');