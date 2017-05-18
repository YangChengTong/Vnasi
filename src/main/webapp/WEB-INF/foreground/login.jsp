<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
#container{width:980px; height:700px; border:0px solid #F00; margin:0px auto;}
#logo{border:0px solid #F00;}
#pic{border:0px solid #F00; float:left; margin-top:100px; width:430px; height:280px;}
#right{border:0px solid #F00; width:540px; height:300px; float:right; margin-top:100px;}
 /*当鼠标放到文本框时，提示文本的样式*/
   .import_prompt{
	border:solid 1px #ffcd00;
	background-color:#ffffda;
	padding-left:5px;
	padding-right:5px;
	line-height:20px;
	}
    /*当文本框内容不符合要求时，提示文本的样式*/
    .error_prompt{
	border:solid 1px #ff3300;
	background-color:#fff2e5;
	background-image:url(<%=request.getContextPath()%>/img/li_err.gif);
	background-repeat:no-repeat;
	background-position:5px 2px;
	padding:2px 5px 0px 25px;
	line-height:20px;
	}
    /*当文本框内容输入正确时，提示文本的样式*/
    .ok_prompt{
	border:solid 1px #01be00;
	background-color:#e6fee4;
	background-image:url(<%=request.getContextPath()%>/img/li_ok.gif);
	background-repeat:no-repeat;
	background-position:5px 2px;
	padding:2px 5px 0px 25px;
	line-height:20px;
	}
.zhu{
	width:100px; height:35px;
	float:left;
	font-size:20px;
	color:white;
	background-color:#80FF80;
	line-height: 35px;
	text-align: center;
	text-decoration: none;
	margin-top: -50px;
	}
.zhu:hover{
	background-color:#0F0;
	cursor:pointer;
	}
.text{
	width:305px;
	height:32px;
	float:right;}
.pwd{
	width:305px;
	height:32px;
	float:right;
	}
.btn{
	background-color:#D84636 ; 
	width:380px;
	 height:40px; 
	 font-size:15px; 
	 font-weight:bold; 
	 color:#FFF;
	}
.btn:hover{
	cursor:#E94616;
	background-color:#F00;
	}
.mi{
	float:right;}
.yzmText{
	height: 30px; width: 300px;
}
.mess{
	width: 180px; height: 1px;
}
</style>
<script src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
<script type ="text/javascript">
			function refresh(){
				document.getElementById('codeimg').src = '${pageContext.request.contextPath}/authCode?ts='+new Date().getTime();
			}
             //验证用户名
             function checkName() {
                 var text = $("#text").val();
                 var textH = $("#textH");
                 var reg = /^([\u4e00-\u9fa5]|\w|[@!#$%&*])+$/;
                 if (text == "") {
                     textH.html("用户名不能为空").addClass("error_prompt");
                     return false;
                 }
                 if (reg.test(text) == false) {
                     textH.html("用户名不合法").addClass("error_prompt");
                     return false;
                 }
                 for (var i = 0; i < text.length; i++) {
                     var j = text.substring(i, i + 1);
                     if (isNaN(j) == false) {
                         textH.html("名字中不能包含数字").addClass("error_prompt");
                         return false;
                     }
                     textH.html("可以使用").addClass("ok_prompt");
                     return true;

                 }
             }
             //验证密码
             function checkpwd() {
                 var pwd = $("#pwd").val();
                 var pwdH = $("#pwdH");
                 var reg =/^[a-zA-Z0-9]{6,16}$/;
                 if (pwd == "") {
                     pwdH.html("密码不能为空").addClass("error_prompt");
                     return false;
                 }
                 if (reg.test(pwd) == false) {
                     pwdH.html("密码由6~16位组成").addClass("error_prompt");
                     return false;
                 }
                 pwdH.html("可以使用").addClass("ok_prompt");
                 return true;
             }
             //提交
             $(function () {
               
                 $("#text").blur(function () {
                     return checkName();
                 });
               
                 $("#pwd").blur(function () {
                     return checkpwd();
                 });
                 $("#zong").submit(function () {
                     var flag = true;
                     if (checkName() == false) {
                         flag = false;
                     }
                     if (checkpwd() == false) {
                         flag = false;
                     }
                     return flag;
                 });
				
			 });
</script>
</head>

<body>
<div id="container">
	<div id="logo"><img src="<%=request.getContextPath()%>/img/vnasi.com.logo.png"/></div>
    <div id="pic"><img src="<%=request.getContextPath()%>/img/login_mian.png" /></div>
    <div id="right">
    <form id = "zong" action="${pageContext.request.contextPath}/user/login" method="post">
    <table border="0" width="100%" cellpadding="5">
    	<tr>
        	<td><h2>会员登录</h2></td>
            <td width="155"></td>
        </tr>
        <tr>
        	<td><img src="<%=request.getContextPath()%>/img/user.png" height="38" />
	        	<c:if test="${userId != null}">
	        		<input id ="text" class="text" type="text" name="userId" value="${userId }" placeholder="有效账户名"/>
	        	</c:if>
	        	<c:if test="${userId == null}">
		        	<input id ="text" class="text" type="text" name="userId" value="" placeholder="有效账户名"/>
	        	</c:if>
        	</td>
            <td><div id = "textH"></div></td>
        </tr>
        <tr> 
        	<td><img src="<%=request.getContextPath()%>/img/pwd.png" height="38" /><input id = "pwd" class="pwd" type="password" name="password" value="" placeholder="有效密码" /></td>
            <td><div id = "pwdH"></div></td>
        </tr>
        	<%-- <%String messg =request.getAttribute("messg");%> <div><%=messg %></div> --%>
         <tr> 
        	<td style="width: 390px; height: 48px;" colspan="2">验证码：<input type="text" id="checkcode" name="checkcode" placeholder="验证码"/>
        	<img id="codeimg" src="${pageContext.request.contextPath}/authCode" onclick="refresh()" width="120" height="38" /><a onclick="refresh()">看不清，换一张</a><div class="mess"></div></td>
        </tr>
        <tr>
        	<td><input class="btn" type="submit" value="确认登录"/></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
        	<td></td>
        	<td ><a class="zhu" href="${pageContext.request.contextPath}/path/toRegister">免费注册</a></td>      	
        </tr>
    </table>
    </form>
    </div>
</div>
</body>
</html>
