<?php
	//checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}

unset($_SESSION['AdminInfo']);
echo '<script>alert("退出成功");location.href="http://localhost/lrkr/index.php?c=login&a=index&admin=1"</script>';
?>