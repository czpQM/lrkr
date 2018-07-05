$(function(){
	var li_width=$('.banner>.container>ul>li').width();
	var li_len=$('.banner>.container>ul>li').size();
	var index=0;
	var timer=null;
	var btn="<div class='btn'>";
	
	$('.banner>.container>ul').width(li_len*li_width);
	
	for(var i=0; i<li_len; i++){
		btn+='<span></span>'; 
	}
	btn+='</div><div class="pre preNext"></div><div class="next preNext"></div>';
	$('.banner>.container').append(btn);
	$('.banner>.container>.btn>span').eq(0).addClass('current');
	
	
	$('.banner>.container>.btn>span').mouseover(function(){
		index=$(this).index();
		anima();
	})
	
	
	
	timer=setInterval(function(){
		anima();
		index++;
		if(index==li_len){
			index=0;
		}
	},1000)
	
	$('.banner').hover(function(){
		clearInterval(timer);
	},function(){
		timer=setInterval(function(){
		anima();
		index++;
		if(index==li_len){
			index=0;
		}
	},1000)
	})
	
	
	
	function anima(){
		var u_left=-li_width*index;
		$('.banner>.container>ul').stop(true).animate({
			'marginLeft':u_left
		},100)
		$('.banner>.container>.btn>span').eq(index).addClass('current').siblings().removeClass('current');
	}
})

