<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	$title='数据';
	$item=array('id','数据名称','数据内容','数据类型');

	$rs=db_select(C,'*',$curPage,100000000);
	
	foreach($rs['res'] as $k=>$val){
		if($val['type']==1){
			$rs['res'][$k]['value']='<img src="'.$val['value'].'">';
		}
		if($val['type']==0){
			$rs['res'][$k]['type']='文字类型';
		}else{
			$rs['res'][$k]['type']='图片类型';
		}
		
	}
	include('template/header.html');
	include('template/setup_index.html');
	include('template/footer.html');