<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>图书详细</title>
	<link rel="stylesheet" href="<c:url value="/css/basic.css"/> ">
	<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/> ">
	<style type="text/css">
		div {
			margin: 20px;
			border: solid 2px gray;
			width: 150px;
			height: 150px;
			text-align: center;
		}

		li {
			margin: 10px;
		}

		a {
			background: url(<c:url value='/images/all.png'/>) no-repeat;
			display: inline-block;
			background-position: 0 -70px;
			margin-left: 30px;
			height: 36px;
			width: 146px;
		}

		a:HOVER {
			background: url(<c:url value='/images/all.png'/>) no-repeat;
			display: inline-block;
			background-position: 0 -106px;
			margin-left: 30px;
			height: 36px;
			width: 146px;
		}
	</style>
</head>

<body>
<div>
	<img src="<c:url value='/book_img/8758723-1_l.jpg'/>" border="0"/>
</div>
<ul>
	<li>书名：Java开发详解</li>
	<li>作者：张孝祥</li>
	<li>单价：39.9元</li>
</ul>
<form id="form" action="<c:url value='/jsps/cart/list.jsp'/>" method="post">
	<input type="text" size="3" name="count" value="1"/>
</form>
<a href="javascript:document.getElementById('form').submit();"></a>
</body>
</html>
