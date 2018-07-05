<?php
	//首页轮播
	$banner=db_select('banner',$field='*',$curPage='',$perPage=1,$where='`category_id`=1');


	//首页关于我们的文章描述
	$about=db_find('article',"id=9");
	//var_dump($about);exit;
	

	//首页产品展示
	$produt=db_select('product',$field='*',$curPage='',$perPage=1,$where='',$limit='4',0,'asc');
	// var_dump($produt);exit;
	

	//首页新闻动态
	$news=db_select('news',$field='*',$curPage='',$perPage=1,$where='',$limit='4',0,'asc');
	foreach ($news as $k => $v) {
		$news[$k]['ftime'] = date('Y-m-d',$news[$k]['ftime']);
	}
	// var_dump($news);exit;

	//首页联系我们
	$chuanzhen=db_find('setup','id=1');
	$email=db_find('setup','id=2');
	$address=db_find('setup','id=3');
	$dianhua=db_find('setup','id=4');
	$web_address=db_find('setup','id=9');

	include('template/header.html');
	include('template/index_index.html');
	include('template/footer.html');