<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/user_center.css" rel="stylesheet" />
<link href="css/basestyle.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" href="css/admin.css" />
<script type="text/javascript" src="script/jquery-1.8.1.js"></script>
 <style type="text/css">
 .centers_m{
 margin-left:20px;
 }
 .req-push-title{
  font-size:18px;
 }
.form-box-list{
margin-bottom:20px;
font-size:14px;

}
.tab-l{
 line-height:30px;
}

.tit{
 width:300px;
 height:40px;
  color:#ccc;
  border:1px solid #ccc;
  border-radius:5px;
  border-shadow:1 1 #999 insert;
}
.tab-r textarea{
  width:500px;
  height:200px;
  line-height:60px;
  font-size:14px;
  border:1px solid #ccc;
  border-radius:10px;
  color:#ccc;
  border-shadow:1 1 #999 insert;
}
 </style>  
</head>

<body style="margin-left: 10px;">

<form action="upNewsAction.action" method="post" enctype="multipart/form-data">
    <div class="centers_m">
  <div class="upload-left">
    <div class="req-push-title"><p class="req-name"><span>新闻前沿</span></p></div>
       <div class="form-box-list1"><div class="error-message" style="display: block;"><i class="fa fa-times-circle"></i><s:property value="#request.mess"/></div></div>
    <div class="form-box-list">
      <div class="tab-l"><span class="form-box-label">新闻标题</span></div>
      <div class="tab-r "><input type="text"  class="form-area-txt tit" name="new_title" placeholder="新闻标题"/></div>
     
      <div class="clearfiexd"></div>
    </div>
    <div class="form-box-list">
      <div class="tab-l"><span class="form-box-label">新闻简介</span></div>
      <div class="tab-r"><textarea  class="form-area-txt" name="new_txt" placeholder="新闻详情"></textarea></div>
     
      <div class="clearfiexd"></div>
    </div>
    <div class="form-box-list">
      <div class="tab-l"><span class="form-box-label">前线图片</span></div>
      <div class="tab-r"><div class="upimg"><input type="file"  name="file"  src="images/upload.png" /></div></div>
      
      <div class="clearfiexd"></div>
    </div>

   <div class="form-box-list">
      <div class="tab-l"><span class="form-box-label">图片类别</span></div>
      <div class="tab-r"><input type="radio" name="new_typeid" value="1" />企业新闻类<input type="radio" name="new_typeid" value="2"/>行业动态类</div>
     
      <div class="clearfiexd"></div>
    </div>
    <div class="form-box-list">
      <div class="tab-l"><span class="form-box-label">发布日期</span></div>
      <div class="tab-r"><input type="data"  class="form-area-txt tit" name="new_data" placeholder="新闻发布的日期"/></div>
     
      <div class="clearfiexd"></div>
    </div>
    

    <div class="form-box-list">
  <input   type="submit"  class="btn-submit" value="提交"/>
   </div>
  </div>
  </div>
  </form>
</body>
</html>
