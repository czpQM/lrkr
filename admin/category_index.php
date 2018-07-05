<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	$title='分类';
	$item=array('id','分类名称','父亲分类的id');
	//var_dump($item);exit;
	$rs=db_select(C,'id,category_name,pid',$curPage,1000000);
	
	/* foreach ($rs['res'] as $key => $value) {
		if ($v['pid']==0) {
			$rs['res'][$k]['pidname']='顶级分类'
		}else{
			$rs['res'][$k]['pidname']='子分类'
		}
	}
	*/
	
	include('template/header.html');
	include('template/category_index.html');
	include('template/footer.html');