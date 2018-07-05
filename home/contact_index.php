<?php
	//联系我们轮播
	$banner=db_select('banner',$field='*',$curPage='',$perPage=1,$where='`category_id`=5');
	//var_dump($banner);exit;
	

	//联系我们
	$chuanzhen=db_find('setup','id=1');
	$email=db_find('setup','id=2');
	$address=db_find('setup','id=3');
	$dianhua=db_find('setup','id=4');
	$web_address=db_find('setup','id=9');

	//留言表单提交
	// var_dump($_POST);exit;

	if(!empty($_POST)){
		// var_dump($_SESSION);
		if(strtolower($_SESSION['vcode']) == strtolower($_POST['vcode'])){
			//消除验证码vcode
			unset($_POST['vcode']);
			//验证码正确的时候
			$_POST['msg_time'] = time();
			// var_dump($_POST);exit;
			db_add('msg',0);exit;
		}else{
			//验证码错误的时候
			echo '<script>alert("验证码错误，请重新输入");history.back();</script>';
			exit;
		}
		
	}

	include('template/header.html');
	include('template/contact_index.html');
	include('template/footer.html');