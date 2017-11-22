<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <% request.setCharacterEncoding("utf-8");%>  
    <%@ page import="java.util.List,com.po.Contact" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<style type="text/css">
.con2{
 width:600px;
 margin-left:50px;
 background:#ccc;
}
</style>
</head>

<body style="margin-left: 10px;">
<div class="con2">
  <div class="con2_text">
        <h3>留&nbsp;&nbsp;言&nbsp;&nbsp;板</h3>
        <table>
          <tr><td>用户</td><td>留言</td><td>操作</td></tr>
       
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
		<tr>
		   <td><%=AllContact.get(i).getName() %></td>
		   <td><%=AllContact.get(i).getMessage()%></td>
		   <td><a href="delContactAction.action?contactid=<%=AllContact.get(i).getId() %>">删除</a></td>
		</tr>
        <%} %>
         </table>
      </div>
</div>

</body>
</html>
