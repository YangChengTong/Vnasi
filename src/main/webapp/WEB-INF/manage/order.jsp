<%@page import="java.text.DateFormat"%>
<%@page import="cn.vnasi.entity.Page1"%>
<%@page import="cn.vnasi.entity.Page"%>
<%@page import="cn.vnasi.entity.NewUser"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理 - 维纳斯花店</title>
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../scripts/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../scripts/function.js"></script>
</head>
<body>
	<div id="header" class="wrap">
		<div id="logo">
			<img src="../img/vnasi.com.logo.png" style="width: 120px;" />
		</div>
		<div class="help">
			<a href="../index.jsp">返回前台页面</a>
		</div>
		<div class="navbar">
			<ul class="clearfix">
				<li><a href="index.jsp">首页</a></li>
				<li><a href="user.jsp">用户</a></li>
				<li><a href="product.jsp">商品</a></li>
				<li class="current"><a href="../Vnasi_orderServlet?opr=list">订单</a></li>
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
		普通用户: ${user.id }您好，今天是<%=dateString%>，欢迎回到管理后台。<a
					href="../UserServlet?opr=exit" style="color:blue;font-weight:bold;">退出账号</a>
			</c:if>
			<c:if test="${user.status==2 }">
		管理员: ${user.id }您好，今天是<%=dateString%>，欢迎回到管理后台。<a
					href="../UserServlet?opr=exit" style="color:blue;font-weight:bold;">退出账号</a>
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
						<em><a href="../ShoppingServlet?opr=insert">新增</a></em><a
							href="product.jsp">商品管理</a>
					</dd>
					<dt>订单管理</dt>
					<dd>
						<a href="../Vnasi_orderServlet?opr=list">订单管理</a>
					</dd>
					<dt>评论管理</dt>
					<dd>
						<a href="../Vnasi_reviewServlet?opr=list">评论管理</a>
					</dd>
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
			<h2>订单管理</h2>
			<div class="search"></div>
			<div class="spacer"></div>
			<form id="orderForm" method="post"
				action="../Vnasi_orderServlet?opr=cha">
				订单号：<input type="text" class="text" name="dhid" id="entityId" />
				订货人：<input type="text" class="text" name="userName" id="enshang"
					value="" readonly="readonly" /> <label class="ui-blue"><input type="submit"
					name="submit" value="查询" /></label>
			</form>
			<div>
				<div class="manage">
					<table class="list">
						<tr>
							<th>订单编号</th>
							<th>所有商品</th>
							<th>数量</th>
							<th>金额</th>
							<th>订单状态</th>
							<th>操作</th>
						</tr>
						<c:forEach items="${sessionScope.orderList }" var="order"
							varStatus="status">

							<tr>
								<td>${order.eo_id }</td>
								<td><c:forEach items="${order.detail }" var="detail">
										<p>
											<img height="50px" width="50"
												src="../files/${detail.product.ep_file_name }" />
											<span style="line-height: 50px;">${detail.product.ep_name }</span>
										</p>
									</c:forEach></td>
								<td><c:forEach items="${order.detail }" var="detail">
										<p style="height: 50px;line-height: 50px;">&nbsp;*&nbsp;&nbsp;${detail.eod_quantity
											}</p>
									</c:forEach></td>
								<td><c:forEach items="${order.detail }" var="detail">
										<p style="height: 50px;line-height: 50px;">${detail.eod_cost
											}</p>
									</c:forEach></td>
								<td>
									<form
										action="../Vnasi_orderServlet?opr=modify&id=${order.eo_id }"
										method="post">
										<select name="eo_status">
											<c:if test="${order.eo_status==1 }">
												<option value="1" selected="selected">待审核</option>
												<option value="2">审核通过</option>

											</c:if>
											<c:if test="${order.eo_status == 2 }">
												<option value="2" selected="selected">审核通过</option>
												<option value="3">配货</option>

											</c:if>
											<c:if test="${order.eo_status == 3 }">
												<option value="3" selected="selected">配货</option>
												<option value="4">卖家已发货</option>

											</c:if>
											<c:if test="${order.eo_status == 4 }">
												<option value="4" selected="selected">卖家已发货</option>
												<option value="5">已收货(待评价)</option>
											</c:if>
											<c:if test="${order.eo_status == 5 }">
												<option value="5" selected="selected">已收货(待评价)</option>
											</c:if>
										</select> <input type="submit" value="修改状态" />
									</form>
								</td>
								<td><a
									href="../Vnasi_orderServlet?opr=index&index=${status.index }">查看详情</a>
								</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div class="manage">
					<div class="search"></div>
					<div class="spacer"></div>
					<ul>
						<li style="padding-left: 600px;">当前页数：[1/1]</li>
					</ul>
				</div>
			</div>






		</div>
		<div class="clear"></div>
	</div>
	<div id="footer">Copyright &copy; 2013 北大青鸟 All Rights Reserved.
		京ICP证1000001号</div>
</body>
</html>
