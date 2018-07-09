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
		.img {
			margin: 20px;
			border: solid 1px #afd9ee;
			width: 200px;
			height: 200px;
			text-align: center;
			padding: 20px;
		}

		a, a:hover{
			background: url(<c:url value='/images/all.png'/>) no-repeat;
			display: inline-block;
			margin-left: 20px;
			height: 36px;
			width: 146px;
		}
		a {
			background-position: 0 -70px;
		}

		a:hover {
			background-position: 0 -106px;
		}
		.input-group {
			margin: 20px;
			width: 130px;
		}
	</style>
</head>

<body>
<div class="img">
	<img src="<c:url value='${requestScope.book.image}'/>" border="0"/>
</div>
<ul>
	<li>书名：${requestScope.book.bname}</li>
	<li>作者：${requestScope.book.author}</li>
	<li>单价：${requestScope.book.price} 元</li>
</ul>
<form id="form" action="<c:url value='/jsps/cart/list.jsp'/>" method="post" >
	<div class="input-group">
		<span class="input-group-addon" id="basic-addon1">数量</span>
		<input type="text" class="form-control"  name="count" aria-describedby="basic-addon1">
	</div>
</form>
<a href="javascript:document.getElementById('form').submit();"></a>
</body>
</html>
