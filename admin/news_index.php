<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	$title='新闻';
	$item=array('id','新闻标题','新闻描述','新闻作者','点击数','所属分类');
	//判断有提交过来的查询关键词
	if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
		$keyword=$_GET['keyword'];
		$where='title like "%'.$keyword.'%" or description like "%'.$keyword.'%"  or content like "%'.$keyword.'%"';
	}else{
		$keyword='';
		$where='';//没有搜索让$where变量为空
    }
	$rs=db_select(C,'id,title,description,content,author,hits,category_id,ftime',$curPage,4,$where);
	foreach($rs['res'] as $k=>$val){
		$rs['res'][$k]['title']=mb_substr($val['title'],0,10,'utf8');
		$rs['res'][$k]['description']=mb_substr($val['description'],0,10,'utf8');
		unset($rs['res'][$k]['content']);
		// $rs['res'][$k]['content']=mb_substr($val['content'],0,10,'utf8');
		// $rs['res'][$k]['author']=mb_substr($val['author'],0,10,'utf8');
		$rs['res'][$k]['ftime']=date('Y-m-d H:i:s',$val['ftime']);
		// $rs['res'][$k]['hits']=mb_substr($val['hits'],0,10,'utf8');
		// $rs['res'][$k]['news_photo']='<img src="'.$val['news_photo'].'" width="120" height="80">';
		//查询分类名称
		$cat=db_find('category','id='.$val['category_id']);
		//把id替换成分类名
		$rs['res'][$k]['category_id']=$cat['category_name'];
	}
	// var_dump($rs);exit;
	include('template/header.html');
	include('template/news_index.html');
	include('template/footer.html');