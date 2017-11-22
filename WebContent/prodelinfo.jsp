<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.List,com.po.Pro" %>
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

<form action="upProDelAction.action" method="post" enctype="multipart/form-data">
    <div class="centers_m">
  <div class="upload-left">
    <div class="req-push-title"><p class="req-name"><span>新产品详情</span></p></div>
       <div class="form-box-list1"><div class="error-message" style="display: block;"><i class="fa fa-times-circle"></i><s:property value="#request.mess"/></div></div>
    
    
     <div class="form-box-list">
      <div class="tab-l"><span class="form-box-label">产品类别</span></div>
      <div class="tab-r">
         <%
			List<Pro> AllPro=(List)session.getAttribute("Allpro"); 
			if(AllPro==null)
			{
			 response.sendRedirect("proAllAction.action");
			 return;
							   
			}
		%>
      <select name="pro_id" style="width:150px">
       <option style="width:150px;border:1px #ccc solid">---请选择产品类别--- </option>
      <% 
      for(int i=AllPro.size()-1;i>=0;i--)
	   {
      %>
      <option   value="<%=AllPro.get(i).getId() %>"  style="width:100px;border:1px #ccc solid"><%=AllPro.get(i).getTitle()%>类 </option>
      <%} %>
      </select>
      </div>
     
      <div class="clearfiexd"></div>
    </div>
    
    <div class="form-box-list">
      <div class="tab-l"><span class="form-box-label">产品标题</span></div>
      <div class="tab-r"><textarea  class="form-area-txt" name="pro_tit" placeholder="产品系内"></textarea></div>
     
      <div class="clearfiexd"></div>
    </div>
    <div class="form-box-list">
      <div class="tab-l"><span class="form-box-label">产品详情展示</span></div>
      <div class="tab-r"><div class="upimg"><input type="file"  name="file"  src="images/upload.png" /></div></div>
      
      <div class="clearfiexd"></div>
    </div>


    </div>
      <div class="form-box-list">
      <div class="tab-l"><span class="form-box-label">产品简介</span></div>
      <div class="tab-r"><textarea  class="form-area-txt" name="pro_txt" placeholder="产品描述"></textarea></div>
     
      <div class="clearfiexd"></div>
    </div>
    <div class="form-box-list">
      <div class="tab-l"><span class="form-box-label">产品名称</span></div>
      <div class="tab-r "><input type="text"  class="form-area-txt tit" name="pro_name" placeholder="产品名称"/></div>
     
      <div class="clearfiexd"></div>
    </div>
    <div class="form-box-list">
      <div class="tab-l"><span class="form-box-label">产品俗称</span></div>
      <div class="tab-r "><input type="text"  class="form-area-txt tit" name="pro_namet" placeholder="产品俗称"/></div>
     
      <div class="clearfiexd"></div>
    </div>
    <div class="form-box-list">
      <div class="tab-l"><span class="form-box-label">产品颜色</span></div>
      <div class="tab-r "><input type="text"  class="form-area-txt tit" name="pro_color" placeholder="产品颜色"/></div>
     
      <div class="clearfiexd"></div>
    </div>
    <div class="form-box-list">
      <div class="tab-l"><span class="form-box-label">产品来源</span></div>
      <div class="tab-r "><input type="text"  class="form-area-txt tit" name="pro_from" placeholder="产品来源"/></div>
     
      <div class="clearfiexd"></div>
    </div>
   <div class="form-box-list">
      <div class="tab-l"><span class="form-box-label">产品规格</span></div>
      <div class="tab-r "><input type="text"  class="form-area-txt tit" name="size" placeholder="产品规格"/></div>
     
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
