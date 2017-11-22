<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>管理员注册页面</title>
        <meta name="description" content="管理员注册" />

        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/login/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/login/style.css" />
		<link rel="stylesheet" type="text/css" href="css/login/animate-custom.css" />
    </head>
    <body>
 

            <section>				
                <div id="container_demo" >

                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="RegAction.action" method="post"> 
                                <h1>注册界面</h1>
                                <p>
                                <% 
		                       String strMess=(String)request.getAttribute("mess");
							   if(strMess==null)
							   {
							   	 strMess="";
							   }
							  %>
							  <%=strMess %>
							  </p>
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > 用户名 </label>
                                    <input id="username" name="userName" type="text" placeholder="用户名"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p">密码</label>
                                    <input id="password" name="pwd" type="password" placeholder="密码" /> 
                                </p>
                                <p>
                                    <label for="password2" class="youpasswd" data-icon="p">确认密码 </label>
                                    <input id="password2" name="pwd1" type="password" placeholder="确认密码 " />
                                </p>
                                <p>
                                    <label for="sex" class="usex">性别 </label>
                                    <input id="sex_one" type="radio" name="sex" value="man" checked="checked">男
                                    <input id="sex_one" type="radio" name="sex" value="woman">女
                                </p>
                                <p> 
                                    <label for="companyabout" class="uabout"> 公司简介 </label>
                                    <textarea rows="4" cols="50" id="companyabout" name="uabout" placeholder="描述一下公司吧！"></textarea>
                                </p>

                                <p class="login button"> 
                                    <input type="submit" value="注册" />
								</p>
                                <p class="change_link">
									加入我们吧！
								
								</p>
                            </form>
                        </div>

              

						
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>