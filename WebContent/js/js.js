// JavaScript Document
$(document).ready(function(){

	$(window).load(function()
	{
        $('.news2_list2').height($('.news2_list1').height()-10);
		
        $('.xinwen2').height($('.xinwen1').height());
	  	var h = $(window).height();

		$(".box").css("height",h) 
		
		
		var h1 = $(".box4_02").height();

		$(".case03").css("height",h1)  
 		
 	})  
	
	$(window).resize(function()
	{
        $('.news2_list2').height($('.news2_list1').height()-10);
		
      	var ha = $(window).height();

		$(".box").css("height",ha)
		
		var h1a = $(".case01 img").height();

		$(".case02").css("height",h1a) 
		
		$(".case02_1").css("height",0.5*h1a-15)  
		$(".case02_2").css("height",0.5*h1a-15)  
		$(".case03").css("height",h1a)      
 		
 	})  


})

/**************banner**************/
$(document).ready(function(){
$(function(){
	
	 $('.banner').width($(window).width());
	 $('.banner').height($('.banner').width()*790/1920);
     $('.banner_list').height($('.banner_qh_big>li>img').eq(0).height());
	 $('.banner_qh_big>li').width($('.banner').width());
	 $('.banner_qh').width($('.banner').width());
 
	var banW=$('.banner_qh_big>li').width();
	var banS=$('.banner_qh_big>li').size();
	
	
	
	$('.banner_qh_big').width(banW*banS);
	
	$('.banner_qh_big>li').eq(0).find('.banner_prev').stop(true).fadeIn(300);
	$('.banner_qh_big>li').eq(0).find('.banner_next').stop(true).fadeIn(300);
	$('.banner_qh_big>li').eq(0).find('.banner_zi').stop(true).animate({top:"50%",opacity:"1"},2000);
	$('.banner_next').click(function(){
		banner1();
		$('.banner_qh_big').stop(true,true).animate({marginLeft:-banW},800,function(){
        $('.banner_qh_big').find('li:first-child').appendTo($('.banner_qh_big'));
        $('.banner_qh_big').css({marginLeft:0})
		})
	})
	
	$('.banner_prev').click(function(){
		banner2()
		$('.banner_qh_big').stop(true,true).animate({marginLeft:-banW},0,function(){
        $('.banner_qh_big').find('li:last-child').prependTo($('.banner_qh_big'));
        $('.banner_qh_big').stop(true,true).animate({marginLeft:0},800)
		})
	})	
	

  
var h=0;
var s=$('.banner_qh_big>li').size();

function banner1(){
		if(h>(s-2)){
			h=0;
	$('.banner_qh_big>li').find('.banner_zi').stop(true).animate({top:"100%",opacity:"0"},0);
			banner();
			}else{
				h++;
			$('.banner_qh_big>li').find('.banner_zi').stop(true).animate({top:"100%",opacity:"0"},0);
				banner();
				}
		}
	
function banner2(){
		if(h<1){
			h=s-1;
		$('.banner_qh_big>li').find('.banner_zi').stop(true).animate({top:"100%",opacity:"0"},0);
			banner_1();
			}else{
				h--;
	$('.banner_qh_big>li').find('.banner_zi').stop(true).animate({top:"100%",opacity:"0"},0);

				banner_1();
				}
		}

function banner(){
	$('.banner_num>li').removeClass('numon');
	$('.banner_num>li').eq(h).addClass('numon');
	$('.banner_qh_big>li').find('.banner_prev').stop(true).fadeOut(300);
	$('.banner_qh_big>li').find('.banner_next').stop(true).fadeOut(300);
	$('.banner_qh_big>li').eq(1).find('.banner_prev').stop(true).fadeIn(300);
	$('.banner_qh_big>li').eq(1).find('.banner_next').stop(true).fadeIn(300);
	$('.banner_qh_big>li').eq(1).find('.banner_zi').stop(true).delay(300).animate({top:"50%",opacity:"1"},1500);
	}

function banner_1(){
	$('.banner_num>li').removeClass('numon');
	$('.banner_num>li').eq(h).addClass('numon');
	$('.banner_qh_big>li').find('.banner_prev').stop(true).fadeOut(300);
	$('.banner_qh_big>li').find('.banner_next').stop(true).fadeOut(300);
	$('.banner_qh_big>li').eq(-1).find('.banner_prev').stop(true).fadeIn(300);
	$('.banner_qh_big>li').eq(-1).find('.banner_next').stop(true).fadeIn(300);
	$('.banner_qh_big>li').eq(-1).find('.banner_zi').stop(true).delay(300).animate({top:"50%",opacity:"1"},1500);

	}




		


 setInterval(function(){
	 banner1();
     $('.banner_qh_big').stop(true,true).animate({marginLeft:-banW},800,function(){
     $('.banner_qh_big').find('li:first-child').appendTo($('.banner_qh_big'));
     $('.banner_qh_big').css({marginLeft:0})
	 })
	 },8000)



	
})


})      







/************phone nav**********/

$(window).load(function(){
 $("#jPanelMenu-menu>ul>li").click(function(){
		if($(this).find("ul").css("display")=="none"){			
			$(this).find("ul").slideDown();	
		}else{
			$(this).find("ul").slideUp();
		}
		
	});

$('.xpnav-btn').click(function(){
	$('#jPanelMenu-menu').toggleClass('jPanelMenu')
	$('#jPanelMenu-menu>ul').stop(true).slideToggle(1000)
	})
})




