<?php
if(!empty($_POST)){
	//如果验证码正确就。。。
	if(strtolower($_SESSION['vcode'])==strtolower($_POST['vcode'])){
		// var_dump($_POST);
		$rs=db_find('adminuser','username="'.$_POST['username'].'"');
		// var_dump($rs);exit;
		//检查管理员是否存在
		if(!empty($rs)){
			//管理员存在情况下，再去判断密码是否正确
			if($rs['password']==md5($_POST['password'])){
				//判断管理员是否冻结
				if($rs['frozen']==1){
					//echo '4';exit;
					echo '<script>alert("很抱歉此用户已被冻结，请使用其他的用户");location.href="'.BASE_URL.'index.php?c=login&a=index&admin=1"</script>';
				}
				//查询管理员权限
				$group = db_find('group','id='.$rs['group_id']);
				//还原json，保存在session
				$rs['group_allow']=json_decode(stripslashes($group['group_allow']),true);
				//var_dump($rs);exit;
				//记录管理员的信息
				$_SESSION['AdminInfo']=$rs;
				//如果有记住密码选择了
				if(isset($_POST['rem']) && $_POST['rem']=='on'){
					//setcookie('保存名字','保存的值',有效时间,'什么路径下有效：/代表根目录下全部文件有效');
					setcookie('adminUserName',$rs['username'],time()+3600*24,'/');
					setcookie('adminPassWord',$_POST['password'],time()+3600*24,'/');
				}
				//echo '1';
				echo '<script>alert("登录成功");location.href="'.BASE_URL.'index.php?c=adminuser&a=index&admin=1"</script>';
			}else{
				echo '<script>alert("亲爱的请再检查清楚一点");history.back()</script>';
			}
			//管理员存在,密码正确要保存信息在session
		}else{
			//echo '3';
			echo '<script>alert("填写信息有误,请检查");history.back()</script>';
		}
	}else{
		//echo '2';
		echo '<script>alert("请看清楚验证码");history.back()</script>';
	}
	
}else{
	//没有表单提交的时候，才做加载html
	include('template/login.html');
}
