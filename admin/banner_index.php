<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	$item=array('id','图片名字','图片链接','图片','所属分类');
	$rs=db_select(C,'id,banner_name,banner_url,banner_info,category_id',$curPage,4);
	foreach($rs['res'] as $k=>$val){
			$rs['res'][$k]['banner_info']='<img src="'.$val['banner_info'].'" width="200" height="150">';
			//查出分类名称
			$cat=db_find('category','id='.$val['category_id']);
			$rs['res'][$k]['category_id']=$cat['category_name'];
	}	
	include('template/header.html');
	include('template/banner_index.html');
	include('template/footer.html');