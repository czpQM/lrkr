<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	$title='文章';
	$item=array('id','文章分类','文章描述');
	//判断有提交过来的查询关键词
	if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
		$keyword=$_GET['keyword'];
		$where='title like "%'.$keyword.'%" or description like "%'.$keyword.'%"  or content like "%'.$keyword.'%"';
	}else{
		$keyword='';
		$where='';//没有搜索让$where变量为空
    }
	$rs=db_select(C,'id,category_id,description',$curPage,4,$where);
	//var_dump($rs);exit;
	foreach($rs['res'] as $k=>$val){
		$category = db_find('category','id='.$rs['res'][$k]['category_id']);
		$rs['res'][$k]['category_id'] = $category['category_name'];
		// $rs[$k]['description']=mb_substr($val['description'],0,4,'utf8');
	}
	
	include('template/header.html');
	include('template/article_index.html');
	include('template/footer.html');