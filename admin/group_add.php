<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	$title='权限';
	
	if(empty($_POST)==false){
		//把数组转成json格式，然后就能保存到数据库
        $_POST['group_allow']=addslashes(json_encode($_POST['group_allow']));
		db_add(C);
	}else{
		$navshow=db_select('nav','id,nav_name,pid',1,100000000000);
		include('template/header.html');
		include('template/group_add.html');
		include('template/footer.html');
	}