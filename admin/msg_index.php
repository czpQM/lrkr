<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	$title='留言';
	$item=array('id','留言姓名','留言电邮','留言电话','留言状态');
	//判断有提交过来的查询关键词
	if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
		$keyword=$_GET['keyword'];
		$where='msg_user like "%'.$keyword.'%" or content like "%'.$keyword.'%"';
	}else{
		$keyword='';
		$where='';//没有搜索让$where变量为空
    }
	$rs=db_select('msg','id,msg_user,msg_email,msg_phone,type',$curPage,4,$where);
	// var_dump($rs['res']);exit;
	foreach($rs['res'] as $k=>$val){
		if($rs['res'][$k]['type']==0){
			$rs['res'][$k]['type'] = '没回复';
		}else{
			$rs['res'][$k]['type'] = '已回复';
		}
		
	}
	
	include('template/header.html');
	include('template/msg_index.html');
	include('template/footer.html');