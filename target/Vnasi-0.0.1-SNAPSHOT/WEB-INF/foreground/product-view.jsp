<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="scripts/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="scripts/function.js"></script>
<link href="css/css.css" type="text/css" rel="stylesheet">	
<SCRIPT src="js/jquery-1.2.6.pack.js" type=text/javascript></SCRIPT>
<SCRIPT src="js/base.js" type=text/javascript></SCRIPT>
<SCRIPT type=text/javascript>
	$(function(){			
	   $(".jqzoom").jqueryzoom({
			xzoom:280,
			yzoom:250,
			offset:10,
			position:"top",
			
			preload:10,
			lens:1
		});
		$("#spec-list").jdMarquee({
			deriction:"left",
			width:350,
			height:56,
			step:2,
			speed:4,
			delay:10,
			control:true,
			_front:"#spec-right",
			_back:"#spec-left"
		});
		$("#spec-list img").bind("mouseover",function(){
			var src=$(this).attr("src");
			$("#spec-n1 img").eq(0).attr({
				src:src.replace("\/n5\/","\/n1\/"),
				jqimg:src.replace("\/n5\/","\/n0\/")
			});
			$(this).css({
				"border":"2px solid #ff6600",
				"padding":"1px"
			});
		}).bind("mouseout",function(){
			$(this).css({
				"border":"1px solid #ccc",
				"padding":"2px"
			});
		});				
	})
	</SCRIPT>

<SCRIPT src="js/lib.js" type=text/javascript></SCRIPT>
<SCRIPT src="js/163css.js" type=text/javascript></SCRIPT>
<style type="text/css">
.shouyes1 {
	width: 100px;
	height: 32px;
	float: left;
	font-size: 13px;
	line-height: 32px;
}

.shouyes {
	width: 900px;
	height: 32px;
	background: #F6F6F6;
	float: left;
	margin-top: 10px;
	margin-bottom: 10px;
}

.shouyesImg {
	width: 21px;
	height: 32px;
	float: left;
}
</style>
<title>无标题文档</title>
</head>

<body>
	<div style="width:900px; height:1200px;    margin:auto;">
		<iframe src="head.jsp" height="167px" width="100%" frameborder="0"
			scrolling="no"></iframe>
		<div class="shouyes">
			<div class="shouyesImg">
				<img src="img/zhuye.png" />
			</div>
			<div class="shouyes1">网站首页/鲜花</div>
		</div>
		<div id="main" class="wrap">
			<div class="lefter">
				<div class="box">
					<h2>商品分类</h2>
					<dl>
						<c:forEach var="list" items="${proRequest }">
							<dt>
								<c:if test="${list.epc_id eq list.epc_parent_id}">${list.epc_name }</c:if>
							</dt>
							<dd>
								<c:if test="${list.epc_id ne list.epc_parent_id}">
									<a
										href="ShoppingServlet?opr=shoppingType&id=${list.epc_id }&pageNo=1">${list.epc_name
										}</a>
								</c:if>
							</dd>

						</c:forEach>

					</dl>
				</div>
				<div class="spacer"></div>
				<div class="last-view">
					<h2>热销榜</h2>
					<dl class="clearfix">
						<c:forEach var="list" items="${shoppingTop6 }">
							<dt><a href="ShoppingServlet?opr=shoppingInfo&shoppingId=${ list.ep_id}"><img src="files/${list.ep_file_name }" width="50" height="50" /></a></dt>
							<dd style="line-height: 50px; "><a style="color: red; font-weight: bold;" href="ShoppingServlet?opr=shoppingInfo&shoppingId=${ list.ep_id}"  target="_self">${list.ep_name }</a></dd>
						</c:forEach>
				  </dl>
				</div>
				<div class="spacer"></div>
				<div class="last-view">
					<h2>最近浏览</h2>
					<dl class="clearfix">
					<c:if test="${sessionScope.lishiShopping1!=null }">
						<dt><a href="ShoppingServlet?opr=shoppingInfo&shoppingId=${ lishiShopping1.ep_id}"><img src="files/${lishiShopping1.ep_file_name }" width="50" height="50" /></a></dt>
						<dd style="line-height: 50px; "><a style="color: red; font-weight: bold;" href="ShoppingServlet?opr=shoppingInfo&shoppingId=${ lishiShopping1.ep_id}"  target="_self">${lishiShopping1.ep_name }</a></dd>				
					</c:if>
					</dl>
					<script type="text/javascript">
					
					</script>
				</div>
			</div>
			<div id="product" class="main">
				<h1>${shoppingById.ep_name }</h1>
                <!---->
                <div id=preview >
                    <div class=jqzoom id=spec-n1 ><img height="240"
                    src="files/${ shoppingById.ep_file_name}" jqimg="files/${ shoppingById.ep_file_name}" width="250"/>
                    </div>
                   
                </div>
				<!---->
					<div style="width:400px; height:300px;  float:left; margin-top: 40px;">
						<table border="0">
							<tr height="30">
								<td width="150">商品编号：${shoppingById.ep_id }</td>
								<td width="150">配送方式：送货上门</td>
							</tr>
							<tr height="35">
								<td>售价：￥<span style="color: red; font-weight: bold;">${shoppingById.ep_price }</span></td>
								<td>库存：${shoppingById.ep_stock }</td>
							</tr>
							<tr height="35">
								<td colspan="2">累计销售:20</td>

							</tr>
							<tr height="35">
								<td colspan="2">用户喜爱度：98%</td>

							</tr>
							<tr>
								<td><img src="img/qujieshuan.png" /></td>
								<td><a href="CartServlet?opr=add&id=${shoppingById.ep_id}"><img src="img/jiaru.png" /></a></td>
							</tr>
						</table>
						<hr />

					</div>

					<div class="clear"></div>
				</div>
				<div style="width: 700px; height: 700px;  float: right;">
					<h2><strong>商品详情</strong></h2>
						<hr/>
					
					<div style="width: 700px; height: 40px;  float: right;">
						${ shoppingById.ep_description}<br /> ......<br />
					</div>
					<div>
						<img src="img/xiangxiImg.png" width="700" alt="" />
					</div>
				</div>
			</div>
			<div class="clear"></div>

		</div>

	</div>
	<iframe src="tail.jsp" height="250px" width="100%" frameborder="0"
		scrolling="no"></iframe>
</body>
</html>

