<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	$title='产品';
	$item=array('id','产品名称','产品预览图','产品多图','产品描述','产品介绍','所属分类');
	
	//判断有提交过来的查询关键词
	if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
		$keyword=$_GET['keyword'];
		$where='pro_name like "%'.$keyword.'%" or description like "%'.$keyword.'%"  or content like "%'.$keyword.'%"';
	}else{
		$keyword='';
		$where='';//没有搜索让$where变量为空
    }
	$rs=db_select(C,'id,pro_name,pro_photo,pro_photos,description,content,category_id,addtime',$curPage,4,$where);
	// var_dump($rs);exit;
	foreach($rs['res'] as $k=>$val){
		$rs['res'][$k]['addtime']=date('Y-m-d H:i:s',$val['addtime']);
		$rs['res'][$k]['pro_photo']='<img src="'.$val['pro_photo'].'" width="120" height="80">';
		$rs['res'][$k]['pro_photos']='<img src="'.$val['pro_photos'].'" width="50" height="30">';
		
		//$rs['res'][$k]['description']=mb_substr($val['description'],0,4,'utf8');
		// $rs['res'][$k]['content']=mb_substr($val['content'],0,4,'utf8');
		$rs['res'][$k]['description']=stripslashes($rs['res'][$k]['description']);
		//查询分类名称
		$cat=db_find('category','id='.$val['category_id']);
		//把id替换成分类名
		$rs['res'][$k]['category_id']=$cat['category_name'];
	}
	
	include('template/header.html');
	include('template/product_index.html');
	include('template/footer.html');