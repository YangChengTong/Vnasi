<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理 - 维纳斯花店</title>
<script type="text/javascript" src="../scripts/My97DatePicker/WdatePicker.js"></script>
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<style type ="text/css">
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
	background-image:url(../img/li_err.gif);
	background-repeat:no-repeat;
	background-position:5px 2px;
	padding:2px 5px 0px 25px;
	line-height:20px;
	}
    /*当文本框内容输入正确时，提示文本的样式*/
    .ok_prompt{
	border:solid 1px #01be00;
	background-color:#e6fee4;
	background-image:url(../img/li_ok.gif);
	background-repeat:no-repeat;
	background-position:5px 2px;
	padding:2px 5px 0px 25px;
	line-height:20px;
	}
    </style>
<script src="../js/jquery-1.8.3.js"></script>
<script type ="text/javascript">
    function checkName() {
        var name = $("#name").val();
        var nameA = $("#nameA");
        var reg = /^[\u4e00-\u9fa5]{1,10}$/;
        if (name == "") {
        	nameA.html("姓名不能为空");
        /*alert("姓名不能为空");*/
            return false;
        }
        if (reg.test(name) == false) {
            nameA.html("真实名不合法");
            return false;
        }
        nameA.html("可以使用").addClass("ok_prompt");
        return true;
    }
    function checkPwd() {
        var passWord = $("#passWord").val();
        var passWordA = $("#passWordA");
        var reg = /^\d{6,16}$/;
        if (passWord == "") {
        	passWordA.html("密码不能为空");
        	/*alert("密码不能为空");*/
            return false;
        }
        if (reg.test(passWord) == false) {
            passWordA.html("密码不合法");
            return false;
        }
        passWordA.html("可以使用").addClass("ok_prompt");
        return true;
    }
    function checkErPwd() {
        var passWord = $("#passWord").val();
        var erpassWord = $("#erpassWord").val();
        var erpassWordA = $("#erpassWordA");
        var reg = /^\d{6,16}$/;
        if (erpassWord == "") {
        	erpassWordA.html("密码不能为空");
        	/*alert("密码不能为空");*/
            return false;
        }
        if(passWord!=erpassWord){
        	erpassWordA.html("密码不一样");
        	return false;
        }
        if (reg.test(erpassWord) == false) {
            erpassWordA.html("密码不合法");
            return false;
        }
        erpassWordA.html("可以使用").addClass("ok_prompt");
        return true;
    }
    function checkMobile() {
        var mobile = $("#mobile").val();
        var mobileA = $("#mobileA");
        var reg = /^(13|15|18)\d{9}$/;
        if (mobile == "") {
        	mobileA.html("号码不能为空");
        	/*alert("密码不能为空");*/
            return false;
        }
        if (reg.test(mobile) == false) {
            mobileA.html("手机不合法");
            return false;
        }
        mobileA.html("可以使用").addClass("ok_prompt");
        return true;
    }
    function checkAddress() {
        var address = $("#address").val();
        var addressA = $("#addressA");
        if (address == "") {
        	addressA.html("地址不能为空");
        	/*alert("密码不能为空");*/
            return false;
        }
        addressA.html("可以使用").addClass("ok_prompt");
        return true;
    }
    $(function () {
    	 $("#name").focus(function () {
             $("#nameA").html("请输入姓名").removeClass().addClass("import_prompt");
         });
         $("#name").blur(function () {
             return checkName();
         });
         $("#passWord").focus(function () {
             $("#passWordA").html("请输入密码").removeClass().addClass("import_prompt");
         });
         $("#passWord").blur(function () {
             return checkPwd();
         });
         $("#erpassWord").focus(function () {
             $("#erpassWordA").html("请输入密码").removeClass().addClass("import_prompt");
         });
         $("#erpassWord").blur(function () {
             return checkErPwd();
         });
         $("#mobile").focus(function () {
             $("#mobileA").html("请输人手机号").removeClass().addClass("import_prompt");
         });
         $("#mobile").blur(function () {
             return checkMobile();
         });
         $("#address").focus(function () {
             $("#addressA").html("请输人地址").removeClass().addClass("import_prompt");
         });
         $("#address").blur(function () {
             return checkAddress();
         });
        $("#zong").submit(function () {
            var flag = true;
            if (checkName() == false) {
                flag = false;
            }
            if (checkPwd() == false) {
                flag = false;
            }
            if (checkErPwd() == false) {
                flag = false;
            }
            if (checkMobile() == false) {
                flag = false;
            }
            if (checkAddress() == false) {
                flag = false;
            }
            return flag;
        });
    });
</script>
</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><img src="../img/vnasi.com.logo.png" style="width: 120px;" /></div>
	<div class="help"><a href="../index.jsp">返回前台页面</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li><a href="index.jsp">首页</a></li>
			<li class="current"><a href="user.jsp">用户</a></li>
			<li><a href="product.jsp">商品</a></li>
			<li><a href="../Vnasi_orderServlet?opr=list">订单</a></li>
			<li><a href="../Vnasi_reviewServlet?opr=list">评论</a></li>
			<li><a href="guestbook.jsp">留言</a></li>
			<li><a href="news.jsp">新闻</a></li>
		</ul>
	</div>
</div>
<%
		//获取系统当前时间
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = formatter.format(date);
%>
<div id="childNav">
	<div class="welcome wrap">
	<c:if test="${user.status==1 }">
		普通用户: ${user.id }您好，今天是<%=dateString %>，欢迎回到管理后台。<a href = "../UserServlet?opr=exit" style = "color:blue;font-weight:bold;">退出账号</a>
	</c:if>
	<c:if test="${user.status==2 }">
		管理员: ${user.id }您好，今天是<%=dateString %>，欢迎回到管理后台。<a href = "../UserServlet?opr=exit" style = "color:blue;font-weight:bold;">退出账号</a>
	</c:if>
	</div>
</div>
<div id="position" class="wrap">
	您现在的位置：<a href="index.jsp">维纳斯花店</a> &gt; 管理后台
</div>
<div id="main" class="wrap">
	<div id="menu-mng" class="lefter">
		<div class="box">
			<dl>
				<dt>用户管理</dt>
				<dd><a href="../UserServlet?opr=list&shuaxin=shuaxin">用户管理</a></dd>
				<dt>商品信息</dt>
				<dd><em><a href="../ProductServlet?opr=selectFu">新增</a></em><a href="../ProductServlet?opr=list">分类管理</a></dd>
				<dd><em><a href="../ShoppingServlet?opr=insert">新增</a></em><a href="product.jsp">商品管理</a></dd>
				<dt>订单管理</dt>
				<dd><a href="../Vnasi_orderServlet?opr=list">订单管理</a></dd>
				<dt>评论管理</dt>
				<dd><a href="../Vnasi_reviewServlet?opr=list">评论管理</a></dd>
				<dt>留言管理</dt>
				<dd><a href="guestbook.jsp">留言管理</a></dd>
				<dt>新闻管理</dt>
				<dd><em><a href="news-add.jsp">新增</a></em><a href="news.jsp">新闻管理</a></dd>
			</dl>
		</div>
	</div>
	<div class="main">
		<h2>修改用户</h2>
		<div class="manage">
			<form action="../UserServlet?opr=update1" method="post" id="zong">
				<table class="form">
					<tr>
						<td class="field">用户名(*)：</td>
						<td><input type="text" class="text" name="userName" value="${newuser.id }" readonly="readonly" /></td>
					</tr>
					<tr>
						<td class="field">真实姓名(*)：</td>
						<td><input type="text" class="text" name="name" id="name" value="${newuser.name}" /></td>
						<td><div id="nameA"></div></td>
					</tr>
					<tr>
						<td class="field">登录密码(*)：</td>
						<td><input type="text" class="text" name="passWord" id="passWord" value="${newuser.pwd }" /></td>
						<td><div id="passWordA"></div></td>
					</tr>
                    <tr>
						<td class="field">确认密码(*)：</td>
						<td><input type="text" class="text" name="passWord" id="erpassWord" value="${newuser. pwd}" /></td>
							<td><div id="erpassWordA"></div></td>
					</tr>
					<tr>
						<td class="field">性别(*)：</td>
						
						<td>
						    <c:if test="${ newuser.sex=='T'}"><input type="radio" name="sex" value="1" checked="checked" />男 <input type="radio" name="sex" value="0" />女</c:if>
							<c:if test="${ newuser.sex=='F'}"><input type="radio" name="sex" value="1"  />男 <input type="radio" name="sex" value="0" checked="checked" />女</c:if>
						</td>
					</tr>
					<tr>
						<td class="field">出生日期：</td>
						<td>
							<input id="birthday" class="text" type="text" value="${newuser.brithday}" onclick="WdatePicker()" name="birthday" style ="width:400px; height:18px;" placeholder="有效生日" />
						</td>
					</tr>
					<tr>
						<td class="field">手机(*)：</td>
						<td><input type="text" class="text" id="mobile" name="mobile" value="${newuser.mobile}" /></td>
						<td><div id="mobileA"></div></td>
					</tr>
					<tr>
						<td class="field">地址(*)：</td>
						<td><input type="text" class="text" id="address" name="address" value="${newuser.address }" /></td>
						<td><div id="addressA"></div></td>
					</tr>					
					<tr>
						<td></td>
						<td><label class="ui-blue"><input type="submit" name="submit" value="更新" /></label>&nbsp;&nbsp;
						<label class="ui-blue"><input type="button" onclick="history.go(-1)" name="submit" value="返回" /></label>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2013 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>
</body>
</html>

