<%@page import="cn.vnasi.entity.Page1"%>
<%@page import="cn.vnasi.entity.Page"%>
<%@page import="cn.vnasi.entity.NewUser"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
			<li class="current"><a href="<%=request.getContextPath()%>/Vnasi_orderServlet?opr=list">订单</a></li>
			<li><a href="<%=request.getContextPath()%>/Vnasi_reviewServlet?opr=list">评论</a></li>
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
			<div Style="width: 400px; height: 400px; float: left;">
				<div class="result-content">
						<table class="insert-tab" style="width:100%;">
							<tbody>
							<tr>
									<td style="text-align: center;">订单编号：</td>
									<td>${sessionScope.orderview.eo_id}</td>
								</tr>
								<tr>
									<td style="text-align: center;">购买人姓名：</td>
									<td>${sessionScope.orderview.eo_user_id}</td>
								</tr>
								<tr>
									<td style="text-align: center;">收货地址：</td>
									<td>${sessionScope.orderview.eo_user_address}</td>
							
								</tr>
								<tr>
									<td style="text-align: center;">下单时间：</td>
									<td>${sessionScope.orderview.eo_create_time}</td>
								</tr>
								<tr>
									<td style="text-align: center;">总金额：</td>
									<td>${sessionScope.orderview.eo_cost}</td>
								</tr>
								<tr>
									<td style="text-align: center;">所购商品：</td>
									<td>
										<c:forEach items="${sessionScope.orderview.detail}" var="detail" varStatus="status">
											<p><a>${detail.product.ep_name }</a>&nbsp;&nbsp;*&nbsp;&nbsp;${detail.eod_quantity }</p>
										</c:forEach>
									</td>
								</tr>
								<tr>
									<td style="text-align: center;">订单状态：</td>
									<td>
										<c:if test="${sessionScope.orderview.eo_status == 1}">
											待审核
										</c:if>
										<c:if test="${sessionScope.orderview.eo_status == 2}">
											审核通过
										</c:if>
										<c:if test="${sessionScope.orderview.eo_status == 3}">
											配货
										</c:if>
										<c:if test="${sessionScope.orderview.eo_status == 4}">
											卖家已发货
										</c:if>
										<c:if test="${sessionScope.orderview.eo_status == 5}">
											已收货(待评价)
										</c:if>
									</td>
								</tr>
							</tbody>
						</table>
						<input style="margin: 10px 0px 10px 300px;" class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
				</div>
			</div>
		</div>
		<!--/main-->
	
	

</body>
</html>
