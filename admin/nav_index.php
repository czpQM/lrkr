<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	$title='导航';
	$item=array('导航名称','所属分类');
	$rs=db_select(C,'nav_name,pid',$curPage,100000000000);
	// var_dump($rs);exit;
	foreach ($rs['res'] as $k => $v) {
		// var_dump($rs['res']);exit;
		if($v['pid'] == 0){
			$rs['res'][$k]['pid'] = ' 顶级分类';
			// var_dump($rs['res']);exit;
			// var_dump([$k]['pid']);exit;
		}else{
			$nav=db_find(C,'id ='.$v['pid']);
			$rs['res'][$k]['pid'] = $nav['nav_name'];
		}
	}
	// var_dump($rs['res']);exit;

	
	include('template/header.html');
	include('template/nav_index.html');
	include('template/footer.html');