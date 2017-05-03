<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/style.css" />
<link type="text/css" rel="stylesheet" href="css/vnashead.css" />
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="scripts/function.js"></script>
<title>无标题文档</title>
</head>

<body>

<%
	if(session.getAttribute("currentUser")==null){
		response.sendRedirect("login.jsp");
	}
%>
<div class="wrap">
    	
<div style="width:100%; height:104px;"><img src="img/wodegouw.png" width="900" height="95" /></div>
	<div id="shopping">
		<form action="CartServlet?opr=buy" method="post">
			<table>
				<tr>
					<th>商品名称</th>
					<th>商品单价</th>
					<th>购买数量</th>
					<th>操作</th>
				</tr>
				<c:if test="${sessionScope.cart.getCartMap().values() != null}">
				<c:forEach var="item" items="${sessionScope.cart.getCartMap().values() }">
				<tr id="product_id_0">
					<td class="thumb"><img src="files/${item.product.ep_file_name }" width="80" height="80" /><a href="#">${item.product.ep_name }</a></td>
					<td class="price" id="price_id_0">
						<span>￥${item.product.ep_price }</span>
						<input type="hidden" value="${item.product.ep_price }" />
					</td>
					<td class="number">
                        <span name="del"><a href="CartServlet?opr=jian&id=${item.product.ep_id }">-</a></span>
                        <input id="number_id_${item.product.ep_id}" type="text" name="number" value="${item.quantity}" />
                        <span name="add"><a href="CartServlet?opr=jia&id=${item.product.ep_id }">+</a></span>
					</td>
					<td class="delete"><a href="CartServlet?opr=remove&id=${item.product.ep_id }">删除</a></td>
				</tr>
				</c:forEach>
				</c:if>
			
				
			</table>
			
				<c:if test="${sessionScope.cart.getCartMap().values() == null}">
						<div style="width: 900px; height: 100px; background: red;">你还没挑选商品哦~~</div>
				</c:if>
            <div class="total"><span id="total">总计：￥${total}</span></div>
			<div class="button"><div class="fanhui"><a href="ShoppingServlet?opr=indexLoad" target="_parent">返回首页</a></div><input type="submit" value=""  /></div>
		</form> <div style="width: 900px; height: 250px;box-shadow:5px 5px 250px #EEE inset; ">
		<div style="width:450px; height: 250px; margin: auto;  ">
			<h3>送货地址：</h3>
			<form action="CartServlet?opr=buy" method="post">
	       		<textarea rows="10" cols="70" name="dizi" >${currentUser.address }</textarea>
	       		
	       		<div style="float: right; height: 40px; width: 100px;"><input type="submit" value="提交" style="width: 100px; height: 30px;" /></div>
	       </form>
		</div>

       	</div>
       <iframe src="tail.jsp" height="250px" width="100%" frameborder="0" scrolling="no"></iframe>
	</div>
    
	
    
</div>
</body>
</html>
