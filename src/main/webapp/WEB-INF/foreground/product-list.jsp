<%@page import="cn.vnasi.entity.Page"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="scripts/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="scripts/function.js"></script>

<style type="text/css">
	body{margin:0px; }
	.bodyMax{
		width:900px; height:1000px;
		  margin:auto;
		}
	.shouyes{
		width:900px; height:32px; background:#F6F6F6; float:left; margin-top:10px; margin-bottom:10px;
		}
	.shouyesImg{
		width:21px; height:32px; float:left;
		}
	.shouyes1{
		width:100px; height:32px; float:left; font-size:13px; line-height:32px; 
		}
	.paixu{
		 width:710px; height:30px;  background:#F6F6F6;
		}
	.paixu ul{
		 width:300px; height:30px; float:left;
		}
	.paixu li{
		width:50px; height:20px; line-height:20px; float:left; list-style:none; border:1px solid #777; text-align:center;
		}
	.geshu{
		 width:80px; height:30px; line-height:30px;; float:right;
		}
	.ljiImg{
		width:70px; height:20px;float:right;
		}
</style>
<script src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
$(function(){
	alert(fds);
		$(window).scroll(function(){
			var st = $(this).scrollTop();
			$("#right").css("top",st);
		});
	});

	
</script>
</head>

<body>
	<iframe src="head.jsp" height="167px" width="100%" frameborder="0" scrolling="no"></iframe>
	<div class="bodyMax">
	 <%
				request.getParameter("utf-8");
				int pageNo = 0;//页数
				int totalPageCount = 0; //总页数
				Page pages = (Page)request.getAttribute("shoppingLists");
				if (pages == null) {
					response.sendRedirect("ShoppingServlet?opr=shoppingList&pageNo=1");
				} else {
					pageNo = pages.getCurrPageNo();//页数赋值
					totalPageCount = pages.getTotalPageCount();//总页数
				}
	   %>
    	<div class="shouyes">
        	<div class="shouyesImg"><img src="img/zhuye.png" /></div><div class="shouyes1">网站首页/鲜花</div>
        </div>
<div id="main" style="width: 900px;">
	<div class="lefter">
		<div id="right" class="box">
			<h2>商品分类</h2>
			<dl>
			<c:forEach var="list" items="${proRequest }">
				<dt><c:if test="${list.epc_id eq list.epc_parent_id}">${list.epc_name }</c:if> </dt>
				<dd><c:if test="${list.epc_id ne list.epc_parent_id}"><a href="ShoppingServlet?opr=shoppingType&id=${list.epc_id }&pageNo=1">${list.epc_name }</a></c:if></dd>
			
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
	<div style="width: 710px;float: left;">
    	<div class="paixu">
        	<ul>
            	<li>排序:</li>
                <li>销量</li>
                <li>价格</li>
                <li>评论数</li>
                <li>上架时间</li>
            </ul>
              <div class="geshu">共<%=pages.getTotalCount() %>个商品</div>
        </div>
      
		<div class="product-list">
			<h2>全部商品</h2>			
			<div class="clear"></div>
			<ul class="product clearfix">
				<c:forEach var="list" items="${requestScope.shoppingLists.topicShoopList }">
					<li>
						<dl>
							<dt><a href="ShoppingServlet?opr=shoppingInfo&shoppingId=${ list.ep_id}" ><img src="files/${list.ep_file_name }" /></a></dt>
							<dd class="title"><a href="ShoppingServlet?opr=shoppingInfo&shoppingId=${ list.ep_id}"" target="_self">&nbsp;&nbsp;${list.ep_name }</a></dd>
							<dd class="price">&nbsp;&nbsp;￥${list.ep_price }<div class="ljiImg"><img src="img/lijigoumai.png" /></div></dd>
						</dl>
					</li>
				</c:forEach>
				
				
			</ul>
			<div class="clear"></div>
			<div class="pager">
				<ul class="clearfix">
					<li  class="current">[<%=pageNo%>/<%=totalPageCount%>]
							</li>
							<%
								if (pageNo > 1) {
							%>
							<li><a href="ShoppingServlet?opr=shoppingList&pageNo=1&likeshopping=${mohuName }">首页</a></li>
							<li><a href="ShoppingServlet?opr=shoppingList&likeshopping=${mohuName }&pageNo=<%=pageNo - 1%>">上一页</a></li>
							<%
								}
								if (pageNo < totalPageCount) {
							%>
							<li><a href="ShoppingServlet?opr=shoppingList&likeshopping=${mohuName }&pageNo=<%=pageNo + 1%>">下一页</a></li>
							<li><a
								href="ShoppingServlet?opr=shoppingList&likeshopping=${mohuName }&pageNo=<%=totalPageCount%>">末页</a></li>
							<%
								}
							%>
				</ul>
			</div>
		</div>
	</div>
	
</div>

    </div>
      <iframe src="tail.jsp" height="250px" width="100%" frameborder="0" scrolling="no"></iframe>
</body>
</html>
