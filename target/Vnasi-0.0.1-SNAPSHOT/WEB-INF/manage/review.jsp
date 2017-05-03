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
				<li><a href="../Vnasi_orderServlet?opr=list">订单</a></li>
				<li class="current"><a href="../Vnasi_reviewServlet?opr=list">评论</a></li>
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
							href="productClass.jsp">分类管理</a>
					</dd>
					<dd>
						<em><a href="product-add.jsp">新增</a></em><a href="product.jsp">商品管理</a>
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
		<div class="main-wrap">
			<div class="result-wrap">
				<div class="result-title"></div>
			</div>

			<div class="main">
				<h2>评论管理</h2>
				<br />
				<div class="manage">
					<table class="list">
						<tr>
							<th>订单编号</th>
							<th>商品</th>
							<th>评价</th>
							<th>评价详情</th>
							<th>操作</th>
						</tr>

						<c:forEach items="${sessionScope.list }" var="r"
							varStatus="status">

							<tr>
								<td>${r.eo_id}</td>
								<td><img src="../files/${r.review.product.ep_file_name }" width="50"
									height="50" /> ${r.review.product.ep_name }</td>
								<td>&nbsp;&nbsp; <c:if test="${r.review.r_Content==''}">
										<c:if test="${r.review.r_review==1}">
											<input type="radio" value="1" name="review${r.review.r_Oid}"
												checked="checked" />&nbsp;&nbsp;好评&nbsp;</c:if>
										<c:if test="${r.review.r_review!=1}">
											<input type="radio" value="1" name="review${r.review.r_Oid}" />&nbsp;&nbsp;好评&nbsp;</c:if>
										<c:if test="${r.review.r_review==2}">
											<input type="radio" value="2" name="review${r.review.r_Oid}"
												checked="checked" />&nbsp;&nbsp;中评&nbsp;</c:if>
										<c:if test="${r.review.r_review!=2}">
											<input type="radio" value="2" name="review${r.review.r_Oid}" />&nbsp;&nbsp;中评&nbsp;</c:if>
										<c:if test="${r.review.r_review==3}">
											<input type="radio" value="3" name="review${r.review.r_Oid}"
												checked="checked" />&nbsp;&nbsp;差评</c:if>
										<c:if test="${r.review.r_review!=3}">
											<input type="radio" value="3" name="review${r.review.r_Oid}" />&nbsp;&nbsp;差评</c:if>
									</c:if> <c:if test="${r.review.r_Content!=''}">
										<c:if test="${r.review.r_review==1}">
											<input type="radio" value="1" name="review${r.review.r_Oid}"
												disabled="disabled" checked="checked" />&nbsp;&nbsp;好评&nbsp;</c:if>
										<c:if test="${r.review.r_review!=1}">
											<input type="radio" value="1" name="review${r.review.r_Oid}"
												disabled="disabled" />&nbsp;&nbsp;好评&nbsp;</c:if>
										<c:if test="${r.review.r_review==2}">
											<input type="radio" value="2" name="review${r.review.r_Oid}"
												disabled="disabled" checked="checked" />&nbsp;&nbsp;中评&nbsp;</c:if>
										<c:if test="${r.review.r_review!=2}">
											<input type="radio" value="2" name="review${r.review.r_Oid}"
												disabled="disabled" />&nbsp;&nbsp;中评&nbsp;</c:if>
										<c:if test="${r.review.r_review==3}">
											<input type="radio" value="3" name="review${r.review.r_Oid}"
												disabled="disabled" checked="checked" />&nbsp;&nbsp;差评</c:if>
										<c:if test="${r.review.r_review!=3}">
											<input type="radio" value="3" name="review${r.review.r_Oid}"
												disabled="disabled" />&nbsp;&nbsp;差评</c:if>
									</c:if>

								</td>
								<td><input type="text" name="xiangqing"
									value="${r.review.r_Content}" readonly="readonly" /></td>
								<td>
								<c:if test="${r.review.r_Content==null}"><a href="../Vnasi_reviewServlet?opr=select&id=${r.review.r_Oid}">
								评价</a></c:if>
								<c:if test="${r.review.r_Content!=null}">已经评价</c:if>
							</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<!--/main-->
				<div class="pager"></div>
				<div class="clear"></div>
			
			</div>
		</div>
	</div>
		<div id="footer">
	Copyright &copy; 2013 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>
</body>
</html>
