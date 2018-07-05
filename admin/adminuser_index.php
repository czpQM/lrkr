<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	// var_dump($_SESSION['AdminInfo']);exit;
	$title='用户';
	$item=array('id','管理员名','管理员密码','管理员昵称','管理员电话','管理员电邮','管理员qq','管理员性别','登录时间','头像');
	//判断有提交过来的查询关键词
	if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
		$keyword=$_GET['keyword'];
		$where='username like "%'.$keyword.'%" or nickname like "%'.$keyword.'%"';
	}else{
		$keyword='';
		$where='';//没有搜索让$where变量为空
	}
	$rs=db_select(C,'id,username,password,nickname,mobile,email,qq,sex,login_time,admin_portrait',$curPage,4,$where);
	//var_dump($rs);exit;
	foreach($rs['res'] AS $k=>$val){
		$rs['res'][$k]['login_time']=date('Y-m-d H:i:s',$val['login_time']);
		$rs['res'][$k]['admin_portrait']='<img src="'.$val['admin_portrait'].'" width="50" height="50">';
		if($val['sex']==0){
			$rs['res'][$k]['sex']='男';
		}elseif($val['sex']==1){
			$rs['res'][$k]['sex']='女';			
		}else{
			$rs['res'][$k]['sex']='保密';			
		}
		//$rs['res'][$k]['nickname']=substr($val['nickname'],0,2);
	}
	
	include('template/header.html');
	include('template/adminuser_index.html');
	include('template/footer.html');