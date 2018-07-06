<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>top</title>
	<link rel="stylesheet" href="<c:url value="/css/basic.css"/> ">
	<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/> ">
	<style type="text/css">
		body {
			background: #4682B4;
		}

		a {
			text-transform: none;
			text-decoration: none;
			color: #9acfea;
		}

		a:hover {
			text-decoration: underline;
		}
	</style>
</head>

<body>
<h1 style="text-align: center;">网上书店</h1>
<div>
	<c:choose>
		<c:when test="${not empty sessionScope.user}">
			您好：${sessionScope.user.username}&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="<c:url value='/jsps/cart/list.jsp'/>" target="body">我的购物车</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="<c:url value='/jsps/order/list.jsp'/>" target="body">我的订单</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="<c:url value="/UserServlet?method=logout"/> " target="_parent">退出</a>
		</c:when>
		<c:otherwise>
			<a href="<c:url value='/jsps/user/login.jsp'/>" target="_blank">登录</a> |&nbsp;
			<a href="<c:url value='/jsps/user/regist.jsp'/>" target="_blank">注册</a>
		</c:otherwise>
	</c:choose>
</div>
</body>
</html>
