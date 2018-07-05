<?php
	//产品轮播
	$banner=db_select('banner',$field='*',$curPage='',$perPage=1,$where='`category_id`=4');
	//var_dump($banner);exit;
	

	//产品中心内导航
	$produt=db_select('category',$field='*',$curPage='',$perPage=1,$where='pid=4',$limit='',$admin=1,$order='asc');
	//var_dump($produt);exit;

	if (isset($_GET['id'])) {
		$id=$_GET['id'];
		$rs=db_select('product',$field='*',$curPage='',$perPage=1,$where='category_id='.$id,$limit='',$admin=1,$order='');
	}else{
		$rs=db_select('product',$field='*',$curPage='',$perPage=1,$where='category_id=13',$limit='',$admin=1,$order='');
	}
	
	foreach($rs as $k=>$v){
		$rs[$k]['addtime']=date('Y-m-d',$rs[$k]['addtime']);
	}
	//var_dump($rs);exit;

	//新闻中心分页
	$curPage=1;
	if(isset($_GET['p'])){
		$curPage=$_GET['p'];
	}
	//var_dump($curPage);exit;
	$re=db_select('news','*',$curPage,3,$where,'',$admin=0,$order='');
	// var_dump($re);exit;
	foreach($re['res'] as $k=>$v) {
		$re['res'][$k]['ftime']=date('Y-m-d H:i:s',$v['ftime']);
	}
	// var_dump($re);exit;

	//产品中心分页
	$curPage=1;
	if(isset($_GET['p'])){
		$curPage=$_GET['p'];
	}
	//var_dump($curPage);exit;
	$re=db_select('product','*',$curPage,3,$where,'',$admin=0,$order='');
	// var_dump($re);exit;
	include('template/header.html');
	include('template/produt_index.html');
	include('template/footer.html');