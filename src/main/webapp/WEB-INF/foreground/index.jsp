<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/vnsindex.css" />

<script src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>


<script type="text/javascript">
	//切换图片方法
	function showPric() {
		var idex = 0;//记录选中的索引
		var flag = true;
		var $li = $("#content").find("#scroll_img").children("li")//图片集合
		var $page = $("#content").find("#scroll_number").children("li")//图片编号集合
		//默认设置第一个数字的样式
		$page.eq(idex).addClass("scroll_number_over").siblings().removeClass(
				"scroll_number_over");
		$page.mouseover(function() {
			flag = false;
			idex = $page.index($(this));//最新索引
			//让索引对应显示，其他图片隐藏
			$li.eq(idex).fadeIn().siblings().fadeOut();
			$(this).addClass("scroll_number_over").siblings().removeClass(
					"scroll_number_over");
		});
		$page.mouseout(function() {
			flag = true;
		});
		setInterval(function() {
			if (flag == false) {
				return;
			}
			idex++;
			if (idex >= $li.length) {
				idex = 0;
			}
			$li.eq(idex).stop().fadeIn().siblings().fadeOut();
			$page.eq(idex).addClass("scroll_number_over").siblings()
					.removeClass("scroll_number_over");
		}, 3000);
	}
	var index = 0;
	var indexs = 0;
	$(function() {
		showPric();
		//showZi();
		$("#express").children("li:gt(0)").css("display", "none");
		var list = $("#express1").children("li");
		var lists = $("#express").children("li");
		setInterval(function() {
			//alert(index);
			for ( var i = 0; i < list.length; i++) {

				if (i == index) {
					$(list[i]).css("display", "block");
					//list[i].css("display","block");
				} else {
					//  list[i].css("display","none");
					$(list[i]).hide();
				}
			}
			index = index + 1 == list.length ? 0 : index + 1;
		}, 3000);

		setInterval(function() {
			//alert(index);
			for ( var i = 0; i < lists.length; i++) {

				if (i == indexs) {
					$(lists[i]).css("display", "block");
					//list[i].css("display","block");
				} else {
					//  list[i].css("display","none");
					$(lists[i]).hide();
				}
			}
			indexs = indexs + 1 == lists.length ? 0 : indexs + 1;
		}, 4000);

	});
</script>
</head>

<body>

	<iframe src="${pageContext.request.contextPath}/path/toForegroundHead" height="167px" width="100%" frameborder="0"
		scrolling="no"></iframe>
	<!--这里要图片切换jQuery-->
	<div class="maximg">
		<div id="content" class="scroll_mid">
			<ul id="scroll_img">
				<li><img src="<%=request.getContextPath()%>/img/daimg2.jpg" width="900" height="240" /></li>
				<li><img src="<%=request.getContextPath()%>/img/daimg1.jpg" width="900" height="240" /></li>
				<li><img src="<%=request.getContextPath()%>/img/daimg3.jpg" width="900" height="240" /></li>

			</ul>
			<ul id="scroll_number" class="imgli">
				<li>1</li>
				<li>2</li>
				<li>3</li>
			</ul>
		</div>
	</div>
	<%-- <%
		if (session.getAttribute("shoppingMeiGui") == null) {
			response.sendRedirect("ShoppingServlet?opr=indexLoad");
		}
	%> --%>
	<div class="maxnerong">
		<div class="dingdan ">
			<div style="width:1024px; height:10px; "></div>
			<div class="dingdan1">
				<div style="width:110px; height:40px; float:left;">
					<img src="<%=request.getContextPath()%>/img/dindan.png" />
				</div>
				<div class="diangdanul" id="zi">
					<ul id="express">
					<c:forEach var="list" items="">
						<li>网友订购:<a href="#"></a></li>
					</c:forEach>
					</ul>
				</div>

			</div>
			<div class="xingwen" id="zi1">
				<div style="width:105px; height:40px; float:left;">
					<img src="<%=request.getContextPath()%>/img/xingwen.png" />
				</div>
				<ul id="express1">
					<c:forEach var="list" items="">
						<li><a href="#"></a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="you1">
			<table>
				<tr>
					<td width="240"><img src="<%=request.getContextPath()%>/img/you1.png" width="220"
						height="220" /></td>
					<td width="240"><img src="<%=request.getContextPath()%>/img/you2.png" width="220"
						height="220" /></td>
					<td width="240"><img src="<%=request.getContextPath()%>/img/you3.png" width="220"
						height="220" /></td>
					<td width="240"><img src="<%=request.getContextPath()%>/img/you4.png" width="220"
						height="220" /></td>
				</tr>
			</table>
		</div>
		<div class="f1">
			<div class="f1img">
				<img src="<%=request.getContextPath()%>/img/1f.png" />
				<img src="<%=request.getContextPath()%>/img/2f.png" />
				<img src="<%=request.getContextPath()%>/img/3f.png" />
				<img src="<%=request.getContextPath()%>/img/4f.png" />
			</div>
			<div class="f1geng">
				<span><a href="#">更多>></a></span>
			</div>
		</div>

		<div class="hua">
			<div class="hua1">
				<img src="<%=request.getContextPath()%>/img/xswl.png" width="215" height="555" />
			</div>

			<div style="width:683px; height:552px;  float:left;">
			
				<c:forEach var="list" items="">
					<div class="hua2">
						<a
							href="#"><img
							src="" width="210" height="190" /></a> <span
							style="color:#5E5E5E;"></span>
						<div style="width:100%; height:12px;"></div>
						<ul>
							<li>￥</li>
							<li>已售:108件</li>
							<li><a
								href="#"><img
									src="<%=request.getContextPath()%>/img/lijigoumai.png" /></a></li>
						</ul>
					</div>
				</c:forEach>
			</div>
		</div>

		<!--2楼-->
		<div class="f1">
			<div class="f1img">
				<img src="<%=request.getContextPath()%>/img/2f.png" />
			</div>
			<div class="f1geng">
				<span><a href="#">更多>></a></span>
			</div>
		</div>
		<div class="hua">
			<div class="FhuaTab">
				<div style="width:683px; height:552px;  float:left;">
					<c:forEach var="list" items="">
						<div class="hua2">
							<a
								href="#"><img
								src="" width="210" height="190" /></a> <span
								style="color:#5E5E5E;"></span>
							<div style="width:100%; height:12px;"></div>
							<ul>
								<li>￥</li>
								<li>已售:108件</li>
								<li><img src="<%=request.getContextPath()%>/img/lijigoumai.png" /></li>
							</ul>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="Fhua1">
				<img src="<%=request.getContextPath()%>/img/xjchun.png" width="215" height="555" />
			</div>
		</div>
		<!--2楼-->

		<!--3楼-->
		<div class="f1">
			<div class="f1img">
				<img src="<%=request.getContextPath()%>/img/3f.png" />
			</div>
			<div class="f1geng">
				<span><a href="#">更多>></a></span>
			</div>
		</div>
		<div class="hua">
			<div class="hua1">
				<img src="<%=request.getContextPath()%>/img/dangao.png" width="215" height="555" />
			</div>
			<div style="width:683px; height:552px;  float:left;">
				<c:forEach var="list" items="">
					<div class="hua2">
						<a
							href="#">
							<img src="" width="210" height="190" />
						</a> <span style="color:#5E5E5E;"></span>
						<div style="width:100%; height:12px;"></div>
						<ul>
							<li>￥</li>
							<li>已售:108件</li>
							<li><img src="<%=request.getContextPath()%>/img/lijigoumai.png" /></li>
						</ul>
					</div>
				</c:forEach>
			</div>

		</div>
		<!--3f-->
		<div class="f1">
			<div class="f1img">
				<img src="<%=request.getContextPath()%>/img/4f.png" />
			</div>
			<div class="f1geng">
				<span><a href="#">更多>></a></span>
			</div>
		</div>
		<div class="hua">
			<div class="FhuaTab">
				<div style="width:683px; height:552px;  float:left;">
					<c:forEach var="list" items="">
						<div class="hua2">
							<a
								href="#"><img
								src="" width="210" height="190" /></a> <span
								style="color:#5E5E5E;"></span>
							<div style="width:100%; height:12px;"></div>
							<ul>
								<li>￥</li>
								<li>已售:108件</li>
								<li><img src="<%=request.getContextPath()%>/img/lijigoumai.png" /></li>
							</ul>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="Fhua1">
				<img src="<%=request.getContextPath()%>/img/katon.png" width="215" height="555" />
			</div>
		</div>

		<div style="width:900px; height:500px; float:left;">
			<a href="#"><img src="<%=request.getContextPath()%>/img/stop.png" width="900" height="500" /></a>
		</div>
	</div>

	</div>
	</div>
	<iframe src="${pageContext.request.contextPath}/path/toForegroundTail" height="250px" width="100%" frameborder="0"
		scrolling="no"></iframe>
</body>
</html>
