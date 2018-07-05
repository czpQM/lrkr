<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	$title='链接';
	$item=array('id','logo图','链接地址');
	$rs=db_select(C,'id,link_logo,link_url',$curPage,4);
	/*foreach($rs['res'] as $k=>$val){
		$rs[$k]['']=mb_substr($val[''],0,4,'utf8');
	}*/
	
	include('template/header.html');
	include('template/link_index.html');
	include('template/footer.html');