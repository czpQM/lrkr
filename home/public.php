<?php
//公共数据区域
if(empty($_GET['p'])==false){
		$curPage=$_GET['p'];
}else{
		$curPage=1;
}
	//网站标题
	switch (C) {
		case 'index':
			$title='首页';
			break;
		case 'abount':
			$title='关于我们';
			break;
		case 'news':
			$title='新闻中心';
			break;
		case 'news-detail':
			$title='新闻中心-详情';
			break;
		case 'produt':
			$title='产品中心';
			break;
		case 'produt-detail':
			$title='产品中心-详情';
			break;
		case 'contact':
			$title='联系我们';
			break;
		
		default:
			# code...
			break;
	}


	//$last=db_select('news',$field='*',$curPage='',$perPage=1,$where='id<'.$_GET['id'].' && category_id='.$_GET["category_id"].'',$limit='',$admin=1,$order='desc');
    //var_dump($last);exit;

	$logo=db_find('setup','id=7');                           //logo图及链接
	// var_dump($logo['value']);exit;
	
	$nav=db_select('category','*','',1,'pid=0','',0,'ASC');  //导航链接地址
	//var_dump($nav);exit;
	
	$copyright=db_find('setup','id=5');                      //尾部版权
	//var_dump($copyright['value']);exit;
	$icp=db_find('setup','id=6');
	//var_dump($icp['value']);exit;
	