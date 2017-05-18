<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理 - 维纳斯花店</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/function.js"></script>
</head>
<!-- 写在Body外面就行可以显示 -->
<!-- <div id="time">
    <script>
        document.getElementById('time').innerHTML = new Date().toLocaleString()
                + ' 星期' + '日一二三四五六'.charAt(new Date().getDay());
        setInterval(
                "document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",
                1000);
    </script>
</div> -->
<body >
<div id="header" class="wrap">
	<div id="logo"><img src="<%=request.getContextPath()%>/img/vnasi.com.logo.png" style="width: 120px;" /></div>
	<div class="help"><a href="path/toForegroundIndex">返回前台页面</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li class="current"><a href="path/toManageIndex">首页</a></li>
			<li><a href="#">用户</a></li>
			<li><a href="#">商品</a></li>
			<li><a href="#">订单</a></li>
			<li><a href="#">评论</a></li>
			<li><a href="#">留言</a></li>
			<li><a href="#">新闻</a></li>
		</ul>
	</div>
</div>

<div id="childNav">
	<div class="welcome wrap">
	<c:if test="${currentUser.status==1 }">
		普通用户: ${currentUser.userId }您好，当前时间：
		<% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %>
		<!--动态时间显示不出来，操蛋  <div id="time" style="width:100px; height:20px;color: white;"></div> -->
		，欢迎回到管理后台。<a href = "#" style = "color:blue;font-weight:bold;">退出账号</a>
	</c:if>
	<c:if test="${currentUser.status==2 }">
		管理员: ${currentUser.userId }您好，当前时间：
		<% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %>
		<!-- <div id="time2" style="width:100px; height:20px;color: white;"></div> -->
		，欢迎回到管理后台。<a href = "#" style = "color:blue;font-weight:bold;">退出账号</a>
	</c:if>
	</div>
</div>
<div id="position" class="wrap">
	您现在的位置：<a href="#">维纳斯花店</a> &gt; 管理后台
</div>
<div id="main" class="wrap">
	<div id="menu-mng" class="lefter">
		<div class="box">
			<dl>
				<dt>用户管理</dt>
				<dd><a href="#">用户管理</a></dd>
				<c:if test="${currentUser.status==2  }">
					<dt>商品信息</dt>
					<dd><em><a href="#">新增</a></em><a href="#">分类管理</a></dd>
					<dd><em><a href="#">新增</a></em><a href="#">商品管理</a></dd>
					<dt>订单管理</dt>
					<dd><a href="#">订单管理</a></dd>
					<dt>评论管理</dt>
					<dd><a href="#">评论管理</a></dd>
					<dt>留言管理</dt>
					<dd><a href="#">留言管理</a></dd>
					<dt>新闻管理</dt>
					<dd><em><a href="#">新增</a></em><a href="#">新闻管理</a></dd>
				</c:if>
			  	
			</dl>
		</div>
	</div>
	<div class="main">
		<h2>管理首页</h2>
		<div id="welcome" class="manage">
			<div class="shadow">
				<em class="corner lb"></em>
				<em class="corner rt"></em>
				<div class="box">
					<div class="msg">
						<p>欢迎回来</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2013 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>
</body>
<script>
        var time=document.getElementById('time');
		time.innerHTML = new Date().toLocaleString()
                + ' 星期' + '日一二三四五六'.charAt(new Date().getDay())
        setInterval(
                "document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",
                1000);
</script>
<script>
        var time2=document.getElementById('time2');
		time2.innerHTML = new Date().toLocaleString()
                + ' 星期' + '日一二三四五六'.charAt(new Date().getDay())
        setInterval(
                "document.getElementById('time2').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",
                1000);
</script>
</html>


