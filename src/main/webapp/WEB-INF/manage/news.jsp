<%@page import="java.text.SimpleDateFormat"%>
<%@page import="cn.vnasi.entity.Page1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理 - 维纳斯花店</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/function.js"></script>
</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><img src="<%=request.getContextPath()%>/img/vnasi.com.logo.png" style="width: 120px;" /></div>
	<div class="help"><a href="<%=request.getContextPath()%>/index.jsp">返回前台页面</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li><a href="index.jsp">首页</a></li>
			<li><a href="user.jsp">用户</a></li>
			<li><a href="product.jsp">商品</a></li>
			<li><a href="<%=request.getContextPath()%>/Vnasi_orderServlet?opr=list">订单</a></li>
			<li><a href="<%=request.getContextPath()%>/Vnasi_reviewServlet?opr=list">评论</a></li>
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
		普通用户: ${user.id }您好，今天是<%=dateString %>，欢迎回到管理后台。<a href = "<%=request.getContextPath()%>/UserServlet?opr=exit" style = "color:blue;font-weight:bold;">退出账号</a>
	</c:if>
	<c:if test="${user.status==2 }">
		管理员: ${user.id }您好，今天是<%=dateString %>，欢迎回到管理后台。<a href = "<%=request.getContextPath()%>/UserServlet?opr=exit" style = "color:blue;font-weight:bold;">退出账号</a>
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
				<dd><em><a href="<%=request.getContextPath()%>/ProductServlet?opr=selectFu">新增</a></em><a href="<%=request.getContextPath()%>/ProductServlet?opr=list">分类管理</a></dd>
				<dd><em><a href="<%=request.getContextPath()%>/ShoppingServlet?opr=insert">新增</a></em><a href="product.jsp">商品管理</a></dd>
				<dt>订单管理</dt>
				<dd><a href="<%=request.getContextPath()%>/Vnasi_orderServlet?opr=list">订单管理</a></dd>
				<dt>评论管理</dt>
				<dd><a href="<%=request.getContextPath()%>/Vnasi_reviewServlet?opr=list">评论管理</a></dd>
				<dt>留言管理</dt>
				<dd><a href="guestbook.jsp">留言管理</a></dd>
				<dt>新闻管理</dt>
				<dd><em><a href="news-add.jsp">新增</a></em><a href="news.jsp">新闻管理</a></dd>
			</dl>
		</div>
	</div>
	<div class="main">
		<h2>新闻管理</h2>
		<%
			request.getParameter("utf-8");
				int pageNo = 0;//页数
				int totalPageCount = 0; //总页数
				Page1 pages = (Page1) session.getAttribute("pa");
				if (pages == null) {
					response.sendRedirect("<%=request.getContextPath()%>/Vnasi_newsServlet?opr=list&pageNo=1");
				} else {
					pageNo = pages.getCurrPageNo();//页数赋值
					totalPageCount = pages.getTotalPageCount();//总页数
				}
		%>
			<div  style="width: 780px;height: 350px;">
			<div class="manage">
			<table class="list">
				<tr>
					<th>ID</th>
					<th>新闻标题</th>
					<th>操作</th>
				</tr>
				
				<c:forEach items="${sessionScope.pa.getNewsList() }" var="news1" varStatus="Status">
				
							<tr>
								<td class="first w4 c">${news1.en_id }</td>
								<td>${news1.en_title }</td>
								<td class="w1 c"><a href="<%=request.getContextPath()%>/Vnasi_newsServlet?opr=getNewsById&baiId=${news1.en_id }" >修改</a>
								<a class="manageDel" href="javascript:if(confirm('是否确认删除？')){location.href='<%=request.getContextPath()%>/Vnasi_newsServlet?opr=delete&id=${news1.en_id}';};">删除</a>
								</td>
							</tr>
						</c:forEach>
			</table>
			</div>
	<div class="pager" >
	</div>
	<div class="clear"></div>
    <div class="pager">
				<ul class="clearfix">
					<li  class="current">[<%=pageNo%>/<%=totalPageCount%>]
							</li>
							<%
								if (pageNo > 1) {
							%>
							<li><a href="<%=request.getContextPath()%>/Vnasi_newsServlet?opr=list&pageNo=1">首页</a></li>
							<li><a href="<%=request.getContextPath()%>/Vnasi_newsServlet?opr=list&pageNo=<%=pageNo - 1%>">上一页</a></li>
							<%
								}
								if (pageNo < totalPageCount) {
							%>
							<li><a href="<%=request.getContextPath()%>/Vnasi_newsServlet?opr=list&pageNo=<%=pageNo + 1%>">下一页</a></li>
							<li><a
								href="<%=request.getContextPath()%>/Vnasi_newsServlet?opr=list&pageNo=<%=totalPageCount%>">末页</a></li>
							<%
								}
							%>
				</ul>
			</div>
</div>
<div id="footer">
	Copyright &copy; 2013 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>
</body>
</html>
