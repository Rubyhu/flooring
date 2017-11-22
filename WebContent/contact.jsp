<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  
<% request.setCharacterEncoding("utf-8");%>  
    <%@ page import="java.util.List,com.po.Contact" %>
<!DOCTYPE html>
<html lang="en"><!-- <html lang="zh-CN"> -->
<head>
	<title>圣和地板</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="renderer" content="webkit">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
    
    <link rel="stylesheet" href="css/bootstrap.css"/>
     <!----------phone--------------->
    <link rel="stylesheet" href="css/phone.css"/>
     <!----------phone--------------->
	<!--[if lt IE 9]>
	<script src="js/html5.js"></script>
	<script src="js/respond.js"></script>
	<![endif]-->

    
    
    <!--[if lte IE 8]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->   <!-- 加载这个是IE8可以运行的 -->
    
    <link rel="shortcut icon" href="images/logo.ico" />

    
	<link href="css/css.css" rel="stylesheet">
    <link rel="stylesheet" href="css/swiper.min.css">
    <style>
    .swiper-container {
        width: 100%;
        height:100%;
    }
    .swiper-slide {
        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
    }
    </style>
</head>

<body>

<!--header-->
<div class="header hidden-xs hidden-sm">

<div class="top clearfix">
    <div class="">
    <div class="top_con clearfix">
     <a href="login.jsp">管路员登录</a>
      <p><a href="##">CN&nbsp;&nbsp;<i class="fa fa-caret-down"></i>&nbsp;&nbsp;</a></p>
      <p>|&nbsp;&nbsp;<a href="##">&nbsp;技术中心&nbsp;&nbsp;</a></p>
      <p><a href="##">营销中心&nbsp</a></p>
    </div>
    </div>
  </div>
  
  
<div class="container">

  <div class="header_con clearfix">
  
    <div class="logo">
    <img src="images/logo.png" width="80%" /> 
    </div>
    
    
    
    
    <div class="nav">
      <ul>
        <li>
        <div class="nav_line"></div>
        <a href="ShowAllNewsAction.action">关于我们</a></li>
        <li>
        <div class="nav_line"></div>
        <a href="pro.jsp">产品中心</a></li>
        <li>
        <div class="nav_line"></div>
        <a href="service.jsp">服务中心</a></li>
        <li>
        <div class="nav_line"></div>
        <a href="news.jsp">新闻中心</a></li>
        <li>
        <div class="nav_line"></div>
        <a href="contact.jsp">联系我们</a></li>
      </ul>
    </div> 
    
    
    
  </div>
 
  
</div>


</div>
<!--header-->





<!-- warp -->
<div class="warp">
<!----banner-------->
<div class="con_banner"></div>
<!----banner-------->


<!------con nr1---------->
<div class="con1">
  <div class="pro1_title">
    <h3 class="box2_nm">联系我们<span>CONTACT US</span></h3>
    <div class="box2_line"></div>
   </div>
  <div class="con1_con">
    <div class="">
      <div class="con1_text">
        <h3>CONTACT</h3>
        <p><i class="fa fa-building"></i>地址：上海市闵行区联友路369号</p>
        <p><i class="fa fa-phone-square"></i>全球财富热线：4008866751</p>
      </div>
      <p>&nbsp;</p>
    </div>
    
   
    <div class="con1_online">
   	      <% 
		  String strMess=(String)request.getAttribute("messContact");
		  if(strMess==null)
		 {
			strMess="";
		}
		%>
		<span ><%=strMess %></span>
       <div class="online_nr clearfix">
        <form  action="RegContactAction.action" method="post">

         <div class="col-md-6"> 
         
           <div class="online_list1">
             <p><input type="text" name="tusername" value="Name"  onfocus="if (value =='Name'){value ='  '}" onblur="if (value =='  '){value='Name'}" style="padding-left:10px; background:none;"> </p>
             <p><input type="text" name="temail" value="E-mail" onfocus="if (value =='E-mail'){value ='  '}" onblur="if (value =='  '){value='E-mail'}" style="padding-left:10px;background:none;"></p>
             <p><input type="text" name="tphone" value="Phone" onfocus="if (value =='Phone'){value ='  '}" onblur="if (value =='  '){value='Phone'}" style="padding-left:10px;background:none;"></p>
             <p><input type="text" name="taddress" value="Address" onfocus="if (value =='Address'){value ='  '}" onblur="if (value =='  '){value='Address'}" style="padding-left:10px;background:none;"></p>
           </div>
         </div>
         
         <div class="col-md-6"> 
           <div class="online_list2">
              <div class="message">
                <textarea name="tmessage"  onfocus="if (value =='Message'){value ='  '}" onblur="if (value =='  '){value='Message'}">Message</textarea>
              </div>
           </div>
         </div>
         <div class="col-md-12 con1_btn"><input type="submit" value="SUBMIT" style="background:#333;padding:8px 20px;"></div>
         </form> 
       </div>
   
     </div>
  </div>
</div>

<div class="con2">
  <div class="con2_text">
        <h3>留&nbsp;&nbsp;言</h3>
        <%
           
           List<Contact> AllContact=(List)session.getAttribute("AllContact"); 
			   if(AllContact==null)
			   {
				   response.sendRedirect("ShowAllContactAction.action");
				   return;
			   }
			
			   for(int i=AllContact.size()-1;i>=0;i--)
			   {
				 
		%>
        <p><span style="font-size:14px;font-weight:bold;">用户：</span><%=AllContact.get(i).getName() %></p>
       <p><span style="font-size:14px;font-weight:bold;">留言：</span><%=AllContact.get(i).getMessage()%> </p>
        <%} %>
      </div>
</div>
<!------con nr1---------->


























<!-- footer -->
<div class="footer hidden-xs hidden-sm">
<div class="container">
    <div class="row">
        
        <div class="foot1">
        
         <div class="foot1_2 col-lg-4 col-md-4 col-sm-4">
<!--           <div class="p1">CREATE A HEALTHY HOME</div>
                <div class="p2">集团产业<span>TREEZO GROUP</span></div>
                <div class="p3">LEAD QUALITY LIFE</div>
                <div class="p4">关注我们</div>
                --> 
                <img src="images/logo.jpg" width="50%" />
                <div class="p4">免费热线：400-8866-751</div>
           </div>
        
        
            <div class="foot1_1 col-lg-8 col-md-8 col-sm-8">
                <ul>
                    <li class="col-lg-2 col-md-2 col-sm-2 clp">
                        <div class="foot1_nm"><a href="javascript:void(0);">关于我们</a></div>
                          <p><a href="##">公司简介</a></p>
                          <p><a href="##">品牌故事</a></p>
                          <p><a href="##">品牌荣誉</a></p>
                          <p><a href="##">企业文化</a></p>
                          <p><a href="##">检测报告</a></p>
                          <p><a href="##">圣和大事记</a></p>
                    </li>
                    <li class="col-lg-2 col-md-2 col-sm-2 clp">
                        <div class="foot1_nm"><a href="javascript:void(0);">产品中心</a></div>
                          <p><a href="##">全球至尊级</a></p>
                          <p><a href="##">德国世家系列</a></p>
                          <p><a href="##">橡木风情系列</a></p>
                          <p><a href="##">艺术拼花系列</a></p>
                          <p><a href="##">艺术仿古系列</a></p>
                          <p><a href="##">专用铺料</a></p>

                    </li>
                    
                    <li class="col-lg-2 col-md-2 col-sm-2 clp">
                        <div class="foot1_nm"><a href="javascript:void(0);">营销中心</a></div>
                          <p><a href="##">终端应用</a></p>
                          <p><a href="##">终端专卖店</a></p>
                          <p><a href="##">地板安装实例</a></p>
                          <p><a href="##">活动实照</a></p>
                          <p><a href="##">营销网络</a></p>
                          <p><a href="##">终端广告照</a></p>
                          <p><a href="##">工程案例</a></p>
                    </li>
                    
                    <li class="col-lg-2 col-md-2 col-sm-2 clp">
                        <div class="foot1_nm"><a href="javascript:void(0);">服务中心</a></div>
                          <p><a href="##">服务承诺</a></p>
                          <p><a href="##">保养知识</a></p>
                         

                    </li>
                    
                    <li class="col-lg-2 col-md-2 col-sm-2 clp">
                        <div class="foot1_nm"><a href="javascript:void(0);">人才中心</a></div>
                          <p><a href="##">人才理念</a></p>
                          <p><a href="##">招聘信息</a></p>
                          

                    </li>
                    
                    <li class="col-lg-2 col-md-2 col-sm-2 clp">
                        <div class="foot1_nm"><a href="javascript:void(0);">新闻中心</a></div>
                        <p><a href="##">企业新闻</a></p>
  <p><a href="##">行业动态</a></p>

                    </li>
                    
                    <div class="clear"></div>
                </ul>
            </div>
            
           
            
            <div class="clear"></div>
        </div>
        <div class="p5">联系我们   技术中心  产品中心  专卖店 </div>
        <div class="foot2">
            <div class="banquan">版权所有 © 上海圣和木制品有限公司 2016 圣和地板</div>
            <div class="unohacha_logo hidden-xs">
                <div style="display:none;"><a href="http://www.unohacha.com" target="_blank">技术支持：UNOHACHA 吾诺瀚卓</a></div>
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" title="UNOHACHA 吾诺瀚卓"  codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="150" height="40">
<param name="movie" value="swf/unohacha.swf">
<param name="quality" value="high">
<param name="wmode" value="transparent">
<embed src="swf/unohacha.swf" wmode="transparent" title="UNOHACHA 吾诺瀚卓" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="150" height="40"></embed>
</object>

            </div>
        </div>
        
    </div>
</div>
</div>
<!-- footer -->

<!--phone footer----->
<div class="footer_phone visible-xs visible-sm ">
    <div class="border_line"></div>
    <div class="clearfix">
      <li><a href="##">关于我们</a></li>
      <li> <a href="##"> 产品中心 </a></li>
      <li> <a href="##"> 新闻中心 </a> </li>
    </div>
    <p> 版权所有 © 上海圣和木制品有限公司 2016 圣和地板 </p>
  </div>
<!--phone footer------>



</div>
<!-- warp -->
</body>
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/bootstrap.js"></script>

<script src="js/js.js"></script>

<script src="js/swiper.min.js"></script>
<script>
    var swiper1 = new Swiper('.swiper1', {
        pagination: '.swiper-pagination1',
        paginationClickable: true,
		nextButton: '.swiper-button-next1',
        prevButton: '.swiper-button-prev1',
        spaceBetween: 0,
		autoplay:5000,
    });
    </script>
    
<script src="js/jquery.touchSlider.js"></script>
<!-----phone  banner----->
<script language="javascript">
$(document).ready(function (){
var height = $(window).height();
var win_w = $(window).width();	
var hei=parseInt(win_w*500/385);
$(".main_visual").hover(function(){
		$("#btn_prev,#btn_next").fadeIn()
		},function(){
		$("#btn_prev,#btn_next").fadeOut()
		})
	$dragBln = false;
	if($(window).width()<768){
$(".main_image").css("height",hei-100);}else{
	$(".main_image").css("height",hei-170);
	}
	$dragBln = false;
	$(".main_image").touchSlider({
		flexible : true,
		speed : 400,
		btn_prev : $("#btn_prev"),
		btn_next : $("#btn_next"),
		paging : $(".flicking_con a"),
		counter : function (e) {
			$(".flicking_con a").removeClass("on").stop().eq(e.current-1).addClass("on");
		}
	});
	$(".main_image").bind("mousedown", function() {
		$dragBln = false;
	})
	$(".main_image").bind("dragstart", function() {
		$dragBln = true;
	})
	$(".main_image a").click(function() {
		if($dragBln) {
			return false;
		}
	})
	<!--timer = setInterval(function() { $("#btn_next").click();}, 4000);-->
	timer = setInterval(function() { $("#btn_next").click();}, 2500);
	$(".main_visual").hover(function() {
		clearInterval(timer);
	}, function() {
		timer = setInterval(function() { $("#btn_next").click();}, 2500);
	})
	$(".main_image").bind("touchstart", function() {
		clearInterval(timer);
	}).bind("touchend", function() {
		timer = setInterval(function() { $("#btn_next").click();}, 4000);
	})
});
</script>

    
</html>
