<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>管理员登录</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
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
                            <form  action="loginAction.action" method="post"> 
                                <h1>登录界面</h1>
                                <p><s:property value="#request.mess"/></p>
                                <p> 
                                    <label for="username" class="uname" data-icon="u" >用户名 </label>
                                    <input id="username" name="userName" required="required" type="text" placeholder="用户名"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> 密码</label>
                                    <input id="password" name="pwd" required="required" type="password" placeholder="密码" /> 
                                </p>

                                <p class="login button"> 
                                    <input type="submit" value="登录" />
								</p>
                                <p class="change_link">
									加入我们吧！
									<a href="RegAction.action">注册</a>
								</p>
                            </form>
                        </div>

              

						
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>