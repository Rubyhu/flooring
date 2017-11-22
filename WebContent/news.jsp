<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List,com.po.News" %>
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
    
     <script>
      window.onload=function(){
      var btn=document.getElementById('btn_a');
      var box=document.getElementById('box_a');
      btn.onclick=function()
      {
           if(box.style.display=="none")
            {
               box.style.display="block";
             }
           else
           {
               box.style.display="none";
             }

      }

}
</script>
    
    
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
<div class="news_banner"></div>
<!----banner-------->


<!------news nr1---------->
<div class="news1">
  <div class="news1_con">
    <div class="container clp">
      <h3 class="box2_nm">企业新闻<span>NEWS CENTER</span></h3>
      <div class="box2_line"></div>
      <%
           List<News> AllNewsOne=(List)session.getAttribute("AllNewsOne"); 
			   if(AllNewsOne==null)
			   {
				   response.sendRedirect("ShowAllNewsOneAction.action");
				   return;
			   }
			   
			   for(int i=AllNewsOne.size()-1;i>=0;i--)
			   {
		%>
      <div class="row clm clearfix" style="margin-top:20px;display:inline;">
        <div class="col-md-4 clp">
          <div class="news1_list">
            <div class="new1_img">
               <img src="<%=AllNewsOne.get(i).getPic() %>" width="100%" />
            </div>
            <div class="news1_text">
               <h3><%=AllNewsOne.get(i).getTitle() %></h3>
               <h4><%=AllNewsOne.get(i).getTxt() %></h4>
               <p><i class="fa fa-calendar"></i><%=AllNewsOne.get(i).getData() %></p>
               
            </div>
          </div>
        </div>
     
      </div>
    <%} %>
    </div>
  </div>
  
  <div class="news1_more">
   <a href="##">
    <h3>view more</h3>
    <div class="more_bg" id="btn_a">
      <i class="fa fa-chevron-down"></i>
    </div>
   </a>
  </div>
</div>
<!------news nr1---------->


<!------news nr2---------->
<div class="news2" id="box_a" style="display:none">
  <div class="news2_con">
   <div class="container clp">
    <h3 class="box2_nm">行业动态<span>Industry News</span></h3>
    <div class="box2_line"></div>
     <%
           List<News> AllNewsTwo=(List)session.getAttribute("AllNewsTwo"); 
			   if(AllNewsTwo==null)
			   {
				   response.sendRedirect("ShowAllNewsTwoAction.action");
				   return;
			   }
			   
			   for(int i=AllNewsTwo.size()-1;i>=0;i--)
			   {
		%>
    <div class="row clm clearfix  news2_list" style="margin-top:30px !important;">
      <div class="col-md-6 clb">
        <div class="news2_list1">
          <img src="<%=AllNewsTwo.get(i).getPic() %>" width="100%" />
        </div>
      </div>
      <div class="col-md-6 clb">
        <div class="news2_list2">
         <h3><%=AllNewsTwo.get(i).getTitle() %></h3>
         <p><%=AllNewsTwo.get(i).getTxt() %></p>
         
        </div>
      </div>
     
      
    </div>
    <%} %>
   
   </div>   
  </div>
</div>

<!------news nr2---------->


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


    
</html>
