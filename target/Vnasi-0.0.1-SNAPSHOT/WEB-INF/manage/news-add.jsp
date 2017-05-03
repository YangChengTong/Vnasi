<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理 - 维纳斯花店</title>
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
<script src = "../js/jquery-1.8.3.js"></script>
<script type="text/javascript">
        function checkTitle() {
            var title = $("#title").val();
            var titleA = $("#titleA");
            if (title=="") {
            	titleA.html("标题不能为空").removeClass().addClass("import_prompt");
                return false;
            }
            titleA.html("可以使用").addClass("ok_prompt");
            return true;
        }
        function checkContent() {
            var content = $("#content").val();
            var contentA = $("#contentA");
            if (content=="") {
            	contentA.html("内容不能为空").removeClass().addClass("import_prompt");
                return false;
            }
            contentA.html("可以使用").addClass("ok_prompt");
            return true;
        }
        $(function () {
        	$("#title").focus(function () {
                $("#titleA").html("请输入标题").removeClass().addClass("import_prompt");
            });
            $("#title").blur(function () {
                return checkTitle();
            });
            $("#content").focus(function () {
                $("#contentA").html("请输入内容").removeClass().addClass("import_prompt");
            });
            $("#content").blur(function () {
                return checkContent();
            });
            $("#form1").submit(function () {
            	var flag = true;
                if (!checkTitle()) {
                    return false;;
                }
                if (!checkContent()) {
                    return false;;
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
			<li><a href="user.jsp">用户</a></li>
			<li><a href="product.jsp">商品</a></li>
			<li><a href="../Vnasi_orderServlet?opr=list">订单</a></li>
			<li><a href="../Vnasi_reviewServlet?opr=list">评论</a></li>
			<li><a href="guestbook.jsp">留言</a></li>
			<li class="current"><a href="news.jsp">新闻</a></li>
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
				<dd><a href="user.jsp">用户管理</a></dd>
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
		<h2>添加新闻</h2>
		<div class="manage">
			<form id="form1" action="../Vnasi_newsServlet?opr=add" method="post">
				<table class="form">
					<tr>
						<td class="field">新闻标题：</td>
						<td><input id = "title" type="text" class="text" name="title"  value="" /><span></span></td>
						<td><div id="titleA"></div></td>
					</tr>
					<tr>
						<td class="field">新闻内容：</td>
						<td><textarea id = "content" class="text" name="content"></textarea></td>
						<td><div id="contentA"></div></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-blue"><input type="submit" name="submit" value="添加" /></label></td>
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
