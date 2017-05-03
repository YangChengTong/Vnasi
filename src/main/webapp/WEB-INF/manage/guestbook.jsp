<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="cn.vnasi.entity.Page"%>
<%@page import="cn.vnasi.entity.Comm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理 - 维纳斯花店</title>
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../scripts/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../scripts/function.js"></script>
</head>
<%
	request.setCharacterEncoding("utf-8");
	int pageNo = 0;//当前页
	int pagesCount = 0;//页面总数
	Page pages = (Page) session.getAttribute("pages");

	if (pages == null) {
		//说明是用户直接打开页面，默认打开第一页
		response.sendRedirect("../CommentServlet?opr=list&pageIndex=1");
	} else {
		pageNo = pages.getCurrPageNo();
		pagesCount = pages.getTotalPageCount();
%>
<body>

	<div id="header" class="wrap">
		<div id="logo">
			<img src="../img/vnasi.com.logo.png" style="width: 120px;"/>
		</div>
		<div class="help">
			<a href="../index.jsp">返回前台页面</a>
		</div>
		<div class="navbar">
			<ul class="clearfix">
				<li><a href="index.jsp">首页</a></li>
				<li><a href="user.jsp">用户</a></li>
				<li><a href="product.jsp">商品</a></li>
				<li><a href="../Vnasi_orderServlet?opr=list">订单</a></li>
				<li><a href="../Vnasi_reviewServlet?opr=list">评论</a></li>
				<li class="current"><a href="guestbook.jsp">留言</a></li>
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
					<dd>
						<a href="user.jsp">用户管理</a>
					</dd>
					<dt>商品信息</dt>
					<dd>
						<em><a href="../ProductServlet?opr=selectFu">新增</a></em><a
							href="../ProductServlet?opr=list">分类管理</a>
					</dd>
					<dd>
						<em><a href="../ShoppingServlet?opr=insert">新增</a></em><a href="product.jsp">商品管理</a>
					</dd>
					<dt>订单管理</dt>
					<dd><a href="../Vnasi_orderServlet?opr=list">订单管理</a></dd>
					<dt>评论管理</dt>
					<dd><a href="../Vnasi_reviewServlet?opr=list">评论管理</a></dd>
					<dt>留言管理</dt>
					<dd>
						<a href="guestbook.jsp">留言管理</a>
					</dd>
					<dt>新闻管理</dt>
					<dd>
						<em><a href="news-add.jsp">新增</a></em><a href="news.jsp">新闻管理</a>
					</dd>
				</dl>
			</div>
		</div>
		<div class="main">
			<h2>留言管理</h2>
			<div class="manage">
				<table class="list">
					<tr>
						<th>ID</th>
						<th>姓名</th>
						<th>留言内容</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
					<%
						for (Comm use : pages.getListNews()) {
					%>
					<tr>
						<td><%=	use.getId()%></td>
						<td><%=use.getNickName()%></td>
						<td><%=use.getContent()%></td>
						<td><%if(use.getReply()!=null){out.print("已回复");}else{out.print("未回复");} %></td>
						<td>
							<%
							if(use.getReply()==null){
							%>
								<a href="../CommentServlet?opr=hui&id=<%=use.getId()%>">	
									回复
								</a>
							<%
							}else{
							%>
								<a href="../CommentServlet?opr=hui&id=<%=use.getId()%>">修改</a>
							<%} %>
							&nbsp;<a href="javascript:if(confirm('是否确认删除？')){location.href='../CommentServlet?opr=delete&id=<%=use.getId()%>';};" href="">删除</a>
							</td>
					</tr>
					<%
						}
					%>
				</table>
				<div class="pager">
					<ul class="clearfix">
						<li>当前页:[<%=pageNo%>/<%=pagesCount%>]
						</li>
						<li>
							<%
								if (pageNo > 1) {
							%> <a href="../CommentServlet?opr=list&pageIndex=1">首页</a> <a
							href="../CommentServlet?opr=list&pageIndex=<%=pageNo - 1%>">上一页</a>
							 <%
							 	}
							 %>
						</li>
						 <%
    					if(pageNo<pagesCount){
   				 		%>
						<li><a href="../CommentServlet?opr=list&pageIndex=<%=pageNo+1%>">下一页</a></li>
						<li><a href="../CommentServlet?opr=list&pageIndex=<%=pagesCount%>">末页</a></li>
					
					</ul>
				</div>
			</div>
		</div>
		<%
			}}
		%>
		<div class="clear"></div>
	</div>
<div id="footer">
	Copyright &copy; 2013 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>
	
</body>
</html>
