<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/vnashead.css" />
<script src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
<script type="text/javascript" >
	$(function(){
		
		$("#menu li").hover(function(){
			$("#menu li").removeClass();
			$(this).removeClass().addClass("yanse");
		},function(){
			$(this).removeClass("yanse");
		});
		$("#zong").hover(function(){
				$("#gowu").css("display","block");
			},function(){
				$("#gowu").css("display","none");
				
			});
		});
		
	
</script>
<style type="text/css">
	#gowu{
	display: none;
	 width:330px; 
	 height:83px;
	 background-color:white;
	position: relative;z-index: 100px;
	left: -200px;
	border:solid 1px #ccc;
	overflow: auto;
	}
	#gowu td{
	font-size: 12px;
	}
</style>
</head>
	
<body>
	<div class="nerong">
    	<div class="tou1" >
        	<div class="tou2">
            	<div class="tou2divl">
                	<span>
                    	欢迎你来到维纳斯,<c:if test="${currentUser==null }">请&nbsp;<a href="${pageContext.request.contextPath}/path/toLogin" target="_parent">登录</a>&nbsp;或&nbsp;<a href="${pageContext.request.contextPath}/path/toRegister" target="_parent">注册</a></c:if>
                    	<c:if test="${currentUser!=null }">${currentUser.userId }</c:if>
                    </span>
                </div>
        		
                <div class="tou2divr">
                    <span><a href="#" >我的订单</a>&nbsp;
                    	<c:if test="${currentUser==null }"> <a href="${pageContext.request.contextPath}/path/toLogin" target="_parent">后台管理</a></c:if>
                       	<c:if test="${currentUser!=null }"> <a href="${pageContext.request.contextPath}/path/toManageIndex" target="_parent">后台管理</a></c:if>&nbsp;&nbsp;
                        <a href="" target="_parent">留言</a>&nbsp;&nbsp;
                        <a href="${pageContext.request.contextPath}/path/toLogin" target="_parent">退出&nbsp;</a>
                    </span>
                </div>
   			</div>
        </div>
        
        <div class="sousou">
        	<div class="sousou1">
            	<div class="sousouimg">
            	<img src="<%=request.getContextPath()%>/img/wns.png" />
                
                </div>
                    <div style="float:right; height:27px; width:700px;  "></div>
                      <div class="shoop1">
                      		<div style=" width:100px; height:4px; "></div>
                          <div style="width:130px; height:23px; float:right; margin:auto; ">
                          		
                                <div style="float:left">
                                    <img src="<%=request.getContextPath()%>/img/gouwuche.png" height="20px" />
                                </div>
                                <div id = "zong">
                                <span class="shoop" id ="gowuche"> 去购物车结算</span>
                                <div id ="gowu" style="" >
                                	<div style="width:308px; height: 30px;background-color: #F6F6F6; line-height: 30px; font-weight: bold; ">&nbsp;购物车商品列表</div>
                                	
                                	
                                	<table border="0">
                                	<c:if test="${sessionScope.cart.getCartMap().values()!=null }">
	                                	<c:forEach var="item" items="" >
	                                		<tr>
	                                			<td><img src="" width="40" height="40"/></td>
	                                			<td ></td>
	                                			<td width="100"></td>
	                                			<td>￥<span style="font-weight: bold; color: red;"></span><br /><a href="">删除</a></td>                         			
	                                		</tr>
	                                	</c:forEach>
                                	</c:if>
                                	<c:if test="${sessionScope.cart.getCartMap().values()==null }">
                                		<div style="width:200px; height: 30px;  margin: auto; font-weight: bold; margin-top: 20px;">你还没挑选商品~~</div>
                                	</c:if>
                                	</table>
                                	
                                	
                                </div>
                                </div>
                          </div>
                      </div>
                
                <div class="sousou2">
                <form action="#" method="post" target="_parent" >
                        <table>
                            <tr>
                                <td colspan="6" style="background-color:#EF3232;">
                                    
                                        <input type="text" name="likeshopping" class="sousou3" value="${sessionScope.mohuName }" placeholder="请输入关键字"/>
                                </td>
                                <td style="background-color:#EF3232;">
                                    <input type="submit"  value=" 搜索 "  class="sousou4"/>                      
                                </td>
                                <td width="100px"></td>
                               
                            </tr>
                            
                            <tr style="color:#6C6C6C; font-size:10px;">
                                <td>热门搜索:</td>
                                <td style="color:#F00" colspan="2">玫瑰花</td>
                                <td>保鲜花</td>
                                <td>巧克力</td>         
                               	<td>蛋糕</td>
                            </tr>
                        </table>
                      
                     </form>
                    
                </div>
            </div>
        </div>
        
        <div class="daohang">
        	<ul id="menu" class="daohang1">
            	<li class="yanse"><a href="" target="_parent">首页</a></li>
                <li><a href="" target="_parent">鲜花</a></li>
                <li><a href="" target="_parent">蛋糕</a></li>
                <li><a href="" target="_parent">巧克力</a></li>
                <li>开业花篮</li>
                <li>绿叶花贲</li>
                <li>香皂化礼盒</li>
                <li>卡通花束</li>
                <li>保鲜盒</li>
            
            </ul>
        </div>
    </div>
</body>
</html>

