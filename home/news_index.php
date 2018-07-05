<?php
	//新闻轮播
	$banner=db_select('banner','*','',1,'`category_id`=3');
	//var_dump($banner);exit;
	
	//新闻中心内导航
	$news=db_select('category','*','',1,'pid=3','',0,'asc');
	//var_dump($abount);exit;
	
	if(isset($_GET['id'])){
		//查询新闻中心的文章
		$id=$_GET['id'];
		$rs=db_select('news','*','',1,'category_id='.$id,'',0,'');
		// $rs=db_find('news',$where='category_id='.$id);
	}else{
		$rs=db_select('news','*','',1,'','',0,'');
	}
	// var_dump($rs);exit;

	//数据库时间戳转换正常格式在前端显示
	foreach($rs as $k=>$v) {
		$rs[$k]['ftime']=date('Y-m-d H:i:s',$v['ftime']);
	}
	// var_dump($rs);exit;

if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	//查询关于我们的id
	$cat=db_find('category','category_name="新闻中心"');
	// var_dump($cat);exit;
	//查询出关于我们的全部子分类信息
    $cat_nav=db_select('category','*','',1,'pid='.$cat['id']);
    // var_dump($rs);exit;
	// var_dump($cat_nav);exit;
	//如果有提交过来的分类id保存提交过来的分类id
	if(isset($_GET['id'])){
		// var_dump($_GET['id']);exit;
		$category_id=$_GET['id'];
		// var_dump($category_id);exit;
		$cat=db_find('category','id="'.$category_id.'"');
	}else{
		$cat=db_find('category','category_name="公司新闻"');//没有提交过来的分类id，默认查询“国内新闻”
		$category_id=$cat['id'];//保存企业简介的id
	}


	//根据分类id切换新闻
	$where='category_id='.$category_id;
	// var_dump($where);exit;
	
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
	include('template/header.html');
	include('template/news_index.html');
	include('template/footer.html');