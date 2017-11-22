<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@page import="com.po.User" %>
<script src="js/admin/jquery-1.8.3.min.js"></script>
  <link href="css/admin/user_center.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/admin/font-awesome.min.css" rel="stylesheet" type="text/css">

<title>管理员页面</title>
 <script type="text/javascript">
        $(function () {
            var setTime;
            $(".user-list").hover(function () {
                var _this = $(this);
                setTime = setTimeout(function () {
                    _this.addClass("hover");
                    $(".top-user i").removeClass("fa-caret-down").addClass("fa-caret-up");
                    $(".user-list .pop-dwon").slideDown(300);
                }, 300);
            }, function () {
                var _this = $(this);
                if (setTime) {
                    clearTimeout(setTime);
                }
                $(".user-list .pop-dwon").hide();
                _this.removeClass("hover");
                $(".top-user i").removeClass("fa-caret-up").addClass("fa-caret-down");
            });
        });
        function UpdateInfo(Info){
        	
        	document.getElementById('external-frame').src=Info;
        }
</script>
 <style type="text/css">
 .mytopper{
     height:40px;
     background:#423e33;
   }
.u-safe-btn a i{
      background-color:#000;
      color:#fff;
  }
.u-main .logo{
    height:60px;
    line-height:60px;
}
.u-main .logo img{
    height:60px;
    margin-top:7px;


}
.center_in_self{
font-size:14px;
font-weight:bold;

}

 </style>
</head>

<body style="background-color: #fff">

<div class="mytopper"></div>
<div class="user-header">
  <div class="u-main">
       <div class="logo">
        <img src="images/logo.png"/>
       </div>
  </div>
</div>
<% User userName=(User)session.getAttribute("userInfo"); 
	if(userName.getUsername()==null)
	{
		response.sendRedirect("index.jsp");
	}
%>

     <div class="centers_ml">
    <!--头像-->
    <div class="center_header">
      <a ><img src="images/timg.jpg"/></a>
      <div class="u-name">您好，<%=userName.getUsername() %><span></span></div>
     
    </div>
    <div class="u-safe-btn">
      <a href="loginout.action">注销</a>
      <a>操作管理</a>
    </div>
    <div class="centers_listm">
      <!--分类开始-->
      <div class="listbox">
        <div class="centers_listm_one_in"><i class="fa fa-photo"></i><span>新闻资讯</span><b></b></div>
        <div class="gjszmdm">
          <a onclick="UpdateInfo('newsinfo.jsp')"  class="center_in_self"><span>添加新闻资讯</span></a>
         
        
        </div >
      </div>
      <div class="listbox">
        <div class="centers_listm_one_in"><i class="fa fa-paper-plane"></i><span>产品管理</span><b></b></div>
        <div class="gjszmdm">
          <a  onclick="UpdateInfo('proinfo.jsp')" class="center_in_self"><span>添加产品</span></a>
          <a  onclick="UpdateInfo('prodelinfo.jsp')" class="center_in_self"><span>添加产品详情</span></a>
         
          
        </div >
      </div>
      <div class="listbox">
        <div class="centers_listm_one_in"><i class="fa fa-commenting"></i><span>保养知识</span><b></b></div>
        <div class="gjszmdm">
          <a onclick="UpdateInfo('serviceinfo.jsp')"  class="center_in_self"><span>保养知识管理</span></a>
        
        </div >
      </div>
       <div class="listbox">
        <div class="centers_listm_one_in"><i class="fa fa-commenting"></i><span>留言管理</span><b></b></div>
        <div class="gjszmdm">
          <a onclick="UpdateInfo('contactinfo.jsp')"  class="center_in_self"><span>删除留言</span></a>
        
        </div >
      </div>
    
    
    </div>
  </div>

    <script type="text/javascript">

        $(function () {
            $(".centers_listm_one_in").click(function () {
                $(this).next(".gjszmdm").slideToggle().siblings("gjszmdm").slideUp()
                $(this).children("b").toggleClass("active")
            });
        })
</script>
<iframe    style="margin-top: 7px;" frameborder="0" scrolling="no" id="external-frame" onload="setIframeHeight(this)"></iframe>

<script type="text/javascript">
function setIframeHeight(iframe) {
	if (iframe) {
	var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
	if (iframeWin.document.body) {
	iframe.height = iframeWin.document.documentElement.scrollHeight || iframeWin.document.body.scrollHeight;
	iframe.width=iframeWin.document.documentElement.scrollWidth || iframeWin.document.body.scrollWidth;
	}
	}
	};

	window.onload = function () {
	setIframeHeight(document.getElementById('external-frame'));
	document.getElementById('external-frame').src="newsinfo.jsp";
	};
</script>

</body>
</html>
