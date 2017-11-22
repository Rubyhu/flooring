<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List,com.po.User,com.po.News" %>
  <%@ taglib prefix="s" uri="/struts-tags" %>
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
   <!--  <link rel="shortcut icon" href="images/logo.ico" /> -->

    
	<link href="css/css.css" rel="stylesheet">
    <link rel="stylesheet" href="css/swiper.min.css">
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
    <script src="js/jquery-1.11.3.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/bootstrap.js"></script>

<script src="js/js.js"></script>

<script src="js/swiper.min.js"></script>

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
<!--banner-->
<div class="banner hidden-xs hidden-sm">
<div class="banner_list">
 
<!-----qh------>    
<div class="banner_qh">  
  <ul class="banner_qh_big clearfix">
    <li class="first"><img src="images/banner1.jpg" width="100%" />
      <div class="banner_prev"><div class="banner_btn_bg"></div><img class="banner_img" src="images/banner_arrow_l.png"></div>
      <div class="banner_next"><div class="banner_btn_bg"></div><img class="banner_img" src="images/banner_arrow.png"></div>
      <div class="banner_zi" >
         <h2>Pure real wood floor</h2>
         <p>纯实木地热地板真专家</p>
      </div>
    </li>
    <li><img src="images/banner2.jpg" width="100%" />
      <div class="banner_prev"><div class="banner_btn_bg"></div><img class="banner_img" src="images/banner_arrow_l.png"></div>
      <div class="banner_next"><div class="banner_btn_bg"></div><img class="banner_img" src="images/banner_arrow.png"></div> 
      <div class="banner_zi" >
         <h2>Constantly struggle</h2>
         <p>生命不息，奋斗不止</p>
      </div>
    </li>
    
    <li><img src="images/banner3.jpg" width="100%" />
      <div class="banner_prev"><div class="banner_btn_bg"></div><img class="banner_img" src="images/banner_arrow_l.png"></div>
      <div class="banner_next"><div class="banner_btn_bg"></div><img class="banner_img" src="images/banner_arrow.png"></div> 
      <div class="banner_zi" >
         <h2>Industry benchmarking</h2>
         <p>引领行业之先，成就行业标杆</p>
      </div>
    </li>
    
  </ul>
 
</div>
</div>  
</div>
<!--banner-->




<!-- content_box -->
<div class="content_box">
<!-- content_box1 -->
<div class="content_box1">
    <div class="container">
        <div class="row">
            <div class="box1">
                <ul>
                    <li class="col-lg-2 col-md-2 col-sm-2">
                        <div class="box1_bg">
                            <a href="javascript:void(0);">
                                <div class="box1_xt"><img src="images/box1_xt01.png" width="100%"></div>
                                <div class="box1_nm">爱心锁扣技术</div>
                            </a>
                        </div>
                    </li>
                    <li class="col-lg-2 col-md-2 col-sm-2">
                        <div class="box1_bg">
                            <a href="javascript:void(0);">
                                <div class="box1_xt"><img src="images/box1_xt02.png" width="100%"></div>
                                <div class="box1_nm">木种精选</div>
                            </a>
                        </div>
                    </li>
                    <li class="col-lg-2 col-md-2 col-sm-2">
                        <div class="box1_bg">
                            <a href="javascript:void(0);">
                                <div class="box1_xt"><img src="images/box1_xt03.png" width="100%"></div>
                                <div class="box1_nm">平衡调湿技术</div>
                            </a>
                        </div>
                    </li>
                    <li class="col-lg-2 col-md-2 col-sm-2">
                        <div class="box1_bg">
                            <a href="javascript:void(0);">
                                <div class="box1_xt"><img src="images/box1_xt04.png" width="100%"></div>
                                <div class="box1_nm">720度金盾密封技术</div>
                            </a>
                        </div>
                    </li>
                    <li class="col-lg-2 col-md-2 col-sm-2">
                        <div class="box1_bg">
                            <a href="javascript:void(0);">
                                <div class="box1_xt"><img src="images/box1_xt05.png" width="100%"></div>
                                <div class="box1_nm">230天超长养生</div>
                            </a>
                        </div>
                    </li>
                    <li class="col-lg-2 col-md-2 col-sm-2">
                        <div class="box1_bg">
                            <a href="javascript:void(0);">
                                <div class="box1_xt"><img src="images/box1_xt06.png" width="100%"></div>
                                <div class="box1_nm">更多技术</div>
                            </a>
                        </div>
                    </li>
                    <div class="clear"></div>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- content_box1 -->
<!-- content_box2 -->
<div class="content_box2">
    <div class="container">
        <div class="row">
            <div class="box2">
                <div class="box2_01 col-lg-4 col-md-4 col-sm-4">
                    <div class="box2_nm box2_nm01">关于我们<span>about us</span></div>
                    
                    <div class="box2_zcnr">
	                   <% List<User> OneUser=(List)session.getAttribute("OneUser"); 
	                   if(OneUser==null)
					   {
						   response.sendRedirect("ShowOneUserAction.action");
						   return;
						   
					   }
						   int i=OneUser.size()-1;
						   
						  
					   %>
                        <p><%=OneUser.get(i).getAboutus() %></p>
                       
                    </div>
                </div>
                <div class="box2_02 col-lg-4 col-md-4 col-sm-4">
                  <img src="images/box2_02.png" width="80%"  style="margin-left:10%;margin-top:10%;"/ > 
                </div>
                <div class="box2_03 col-lg-4 col-md-4 col-sm-4">
                    <div class="box2_nm box2_nm01">场景体验<span>DIY</span></div>
                   
                    <div class="box2_sp"><img src="images/box2_sp.jpg" width="100%"></div>
                    <div class="sj"><img src="images/sj.jpg"></div>
                </div>
                <div class="clear"></div>	
            </div>
        </div>
    </div>
</div>
<!-- content_box2 -->
<!-- content_box3 -->
<div class="content_box3">
            	<div class="container">
                	<div class="row">
                    	<div class="col-lg-12 col-md-12 col-sm-12">
                    	<div class="box2_nm">新闻资讯<span>News</span></div>
                       
                        </div>
                        <div class="clear"></div>
                        <div class="box3">
		                <ul>	           
			  	 <%
			  	    List<News> AllNews=(List)session.getAttribute("AllNews"); 
						   if(AllNews==null)
						   {
							   response.sendRedirect("ShowAllNewsAction.action");
							   return;
							   
						   }
						  %>
				     <s:iterator value="#session.AllNews">
                            	 <li class="col-lg-3 col-md-3 col-sm-3">
                                	<div class="synews">
                                    	<div class="synews_bt"><a href="javascript:void(0);"><s:property value="title"/></a><div class="sj1"></div></div>
                                        <div class="synews_wznr">
                                        	<p><s:property value="txt"/></p>
                                        </div>
                                        <div class="synews_date"><s:property value="data"/></div>
                                    </div>
                                </li>
					</s:iterator>
                              <div class="clear"></div>
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
<!-- content_box3 -->
<!-- content_box4 -->
<div class="content_box4">
    <div class="container">
        <div class="row">
        
            <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="box2_nm">产品中心<span>product center</span></div>
            
            </div>
            <div class="clear"></div>
            
            <div class="box4 clearfix">
               <div class="box4_02 col-lg-10 col-md-10 col-sm-10 clearfix clp">
                <div class="box4_01 col-lg-4 col-md-4 col-sm-4">
                    <div class="case01">
                    <a href="javascript:void(0);"><img src="images/case01.jpg" width="100%">
                     <div class="pro_text">
                      <h3>全球至尊级</h3>
                     </div>
                    </a>
                    
                    </div>
                    
                </div>
                <div class="box4_01 col-lg-4 col-md-4 col-sm-4">
                    <div class="case01"><a href="javascript:void(0);"><img src="images/case02.jpg" width="100%">
                     <div class="pro_text">
                      <h3>德国世家系列</h3>
                     </div>
                    </a></div>
                </div>
                <div class="box4_01 col-lg-4 col-md-4 col-sm-4">
                    <div class="case01"><a href="javascript:void(0);"><img src="images/case03.jpg" width="100%">
                     <div class="pro_text">
                      <h3>橡木风情系列</h3>
                     </div>
                    </a></div>
                </div>
                <div class="box4_01 col-lg-6 col-md-6 col-sm-6" style="margin-top:20px;">
                    <div class="case01"><a href="javascript:void(0);"><img src="images/case04.jpg" width="100%">
                     <div class="pro_text">
                      <h3>艺术拼花系列</h3>
                     </div>
                    </a></div>
                </div>
                <div class="box4_01 col-lg-6 col-md-6 col-sm-6" style="margin-top:20px;">
                    <div class="case01"><a href="javascript:void(0);"><img src="images/case05.jpg" width="100%">
                     <div class="pro_text">
                      <h3>艺术仿古系列</h3>
                     </div>
                    </a></div>
                </div>
               </div>                
                <div class="box4_03 col-lg-2 col-md-2 col-sm-2">
                    <div class="case03">
                        <div class="synews_bt synews_bt01"><p>热门关注</p><div class="sj1" id="sj1"></div></div>
                        <div class="fwln_nr">
                           <a href="##">
                            <div class="fwln_img">
                              <img src="images/guanzhu1.jpg" width="100%" />
                            </div>
                            <p>番龙眼&nbsp;&nbsp;|&nbsp;&nbsp;柚木色</p>
                           </a>
                           <a href="##">
                            <div class="fwln_img">
                              <img src="images/guanzhu2.jpg" width="100%" />
                            </div>
                            <p>栎木&nbsp;&nbsp;|&nbsp;&nbsp;蔚蓝海岸</p>
                            </a>
                        </div>
                        
                        
                        <div class="synews_bt synews_bt01"><p>热门专题</p><div class="sj1" id="sj1"></div></div>
                        <div class="fwln_nr">
                          <a href="##">
                            <div class="fwln_img">
                              <img src="images/guanzhu3.jpg" width="100%" />
                            </div>
                            <p>纯实木地热地板</p>
                           </a>
                        </div>
                        
                        
                            <!---   <div style="padding:0px 15px;">
                        <div class="gzwm01 gzwm01s">
                                    <a href="javascript:void(0);">CLICK MORE ></a>
                                    <div class="gzwm_xian"></div>
                                </div>  
                        </div> -->
                    </div>
                </div>
                <div class="clear"></div>
            </div>
            
        </div>
    </div>
</div>
<!-- content_box4 -->
<!-- content_box5 -->
<div class="content_box5">
    <div class="container">
        <div class="row">
        
            <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="box2_nm">投资与建议<span>FEEDBACK</span></div>
            
            </div>
            <div class="clear"></div>
            
            <div class="box5">
            	<form  action="RegContactAction.action" method="post">
                <div class="box5_1 col-lg-5 col-md-5 col-sm-5">
                  
                    <div class="tzjy">
                        <div class="tzjy01">
                            <div class="tzjy01_1 col-lg-6 col-md-6 col-sm-6">
                            <input class="input1" name="tusername" type="text" value="Name*" onFocus="this.value=''" onBlur="if(this.value==''){this.value='Names*'}" />
                            </div>
                            <div class="tzjy01_2 col-lg-6 col-md-6 col-sm-6">
                            <input class="input1" name="tphone" type="text" value="Tel*" onFocus="this.value=''" onBlur="if(this.value==''){this.value='Tel*'}" />
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="tzjy01">
                            <div class="tzjy01_1 col-lg-6 col-md-6 col-sm-6">
                            <input class="input1" name="temail" type="text" value="E-mail" onFocus="this.value=''" onBlur="if(this.value==''){this.value='E-mail'}" />
                            </div>
                            <div class="tzjy01_2 col-lg-6 col-md-6 col-sm-6">
                            <input class="input1" name="taddress" type="text" value="Add" onFocus="this.value=''" onBlur="if(this.value==''){this.value='Add'}" />
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="tzjy02">
                            <textarea name="tmessage" onFocus="this.value=''" onBlur="if(this.value==''){this.value='Message'}">Message</textarea>
                        </div>
                        <div class="tzjy03">
                            <div class="tzjy03_wz">
                                <div class="tzjy03_wz01">Thank you for your advice</div>
                                <div class="tzjy03_wz02">我们将第一时间与您联系</div>
                            </div>
                            <div class="fasong"><input type="submit" value="发送" style="width:90px"></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="box5_2 col-lg-7 col-md-7 col-sm-7">
                    <ul>
                        <li class="col-lg-3 col-md-3 col-sm-3">
                            <div class="box5_tp"><a href="javascript:ovid(0);"><img src="images/box5_tp01.jpg" width="100%"></a></div>
                            <div class="box5_nm"><a href="javascript:ovid(0);">服务中心</a></div>
                        </li>
                        <li class="col-lg-3 col-md-3 col-sm-3">
                            <div class="box5_tp"><a href="javascript:ovid(0);"><img src="images/box5_tp02.jpg" width="100%"></a></div>
                            <div class="box5_nm"><a href="javascript:ovid(0);">营销网络</a></div>
                        </li>
                        <li class="col-lg-3 col-md-3 col-sm-3">
                            <div class="box5_tp"><a href="javascript:ovid(0);"><img src="images/box5_tp03.jpg" width="100%"></a></div>
                            <div class="box5_nm"><a href="javascript:ovid(0);">终端专卖店</a></div>
                        </li>
                        <li class="col-lg-3 col-md-3 col-sm-3">
                            <div class="box5_tp"><a href="javascript:ovid(0);"><img src="images/box5_tp04.jpg" width="100%"></a></div>
                            <div class="box5_nm"><a href="javascript:ovid(0);">工程案例</a></div>
                        </li>
                        <div class="clear"></div>
                    </ul>
                </div>
                <div class="clear"></div>
                </form>
            </div>
            
        </div>
    </div>
</div>
<!-- content_box5 -->
</div>
<!-- content_box -->
<!-- footer -->
<div class="footer hidden-xs hidden-sm">
<div class="container">
    <div class="row">
        
        <div class="foot1">
        
         <div class="foot1_2 col-lg-4 col-md-4 col-sm-4"> 
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




    
</html>
