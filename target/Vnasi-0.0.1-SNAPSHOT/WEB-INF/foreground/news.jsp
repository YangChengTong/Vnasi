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


<div class="wrap">
<iframe src="head.jsp" height="167px" width="100%" frameborder="0"
		scrolling="no"></iframe>
		<div style="width: 900px; height: 300px; box-shadow:5px 5px 250px #ccc inset; float: left; border-radius:20px; border: 1px solid;">
		<div style="width: 900px; height: 10px;"></div>
		<div style="width: 300px; height: 50px;  margin: auto; "><h1>${newsById.en_title }</h1></div>
		<p style="font-size: 20px; font-weight: bold; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${newsById.en_content }</p>
		</div>
 <iframe src="tail.jsp" height="250px" width="100%" frameborder="0"
		scrolling="no"></iframe>
    
</div>
</body>
</html>
