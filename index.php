<?php 
//判断访问的是前台还是后台
if(isset($_GET['admin']) && $_GET['admin']==1){
	$admin='admin';
}else{
	$admin='home';
}
//获取php文件下划线前面的部分  比如  home_index.php 获取的是home
if(isset($_GET['c'])){
	$c=$_GET['c'];
}else{
	$c='home';
}
//获取php文件下划线后面的部分  比如  home_index.php 获取的是index
if(isset($_GET['a'])){
	$a=$_GET['a'];
}else{
	$a='index';
}
//admin和c和a加在一起形成一个默认文件  home/home_index.php 
define('ADMIN',$admin);//定义常量保存admin的值
define('C',$c);//定义常量保存c的值
define('A',$a);//定义常量保存a的值

include('lib/init.php');//加在配置文件	

include($admin.'/public.php');//加载前后台的公共文件
$include_path=$admin.'/'.$c.'_'.$a.'.php';//加载前后台的控制php文件
//判断如果文件是真实存在，就加载该文件
if(file_exists($include_path)){
	include($include_path);
}else{
	//文件不存在就加载public目录的404.html
	include('public/404.html');
}

