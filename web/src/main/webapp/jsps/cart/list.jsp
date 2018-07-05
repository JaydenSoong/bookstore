<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>购物车列表</title>
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

		#buy {
			background: url(<c:url value='/images/all.png'/>) no-repeat;
			display: inline-block;
			background-position: 0 -902px;
			margin-left: 30px;
			height: 36px;
			width: 146px;
		}

		#buy:HOVER {
			background: url(<c:url value='/images/all.png'/>) no-repeat;
			display: inline-block;
			background-position: 0 -938px;
			margin-left: 30px;
			height: 36px;
			width: 146px;
		}
	</style>
</head>

<body>
<h1>购物车</h1>

<table border="1" width="100%" cellspacing="0" background="black">
	<tr>
		<td colspan="7" align="right" style="font-size: 15pt; font-weight: 900">
			<a href="javascript:alert('已清空购物车！');">清空购物车</a>
		</td>
	</tr>
	<tr>
		<th>图片</th>
		<th>书名</th>
		<th>作者</th>
		<th>单价</th>
		<th>数量</th>
		<th>小计</th>
		<th>操作</th>
	</tr>

	<tr>
		<td>
			<div><img src="<c:url value='/book_img/8758723-1_l.jpg'/>"/></div>
		</td>
		<td>Java详解</td>
		<td>张孝祥</td>
		<td>39.9元</td>
		<td>2</td>
		<td>79.8元</td>
		<td><a href="javascript:alert('删除购物项成功！');">删除</a></td>
	</tr>
	<tr>
		<td>
			<div><img src="<c:url value='/book_img/8991366-1_l.jpg'/>"/></div>
		</td>
		<td>Java详解</td>
		<td>张孝祥</td>
		<td>39.9元</td>
		<td>2</td>
		<td>79.8元</td>
		<td><a href="javascript:alert('删除购物项成功！');">删除</a></td>
	</tr>
	<tr>
		<td>
			<div><img src="<c:url value='/book_img/9265169-1_l.jpg'/>"/></div>
		</td>
		<td>Java详解</td>
		<td>张孝祥</td>
		<td>39.9元</td>
		<td>2</td>
		<td>79.8元</td>
		<td><a href="javascript:alert('删除购物项成功！');">删除</a></td>
	</tr>
	<tr>
		<td>
			<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>"/></div>
		</td>
		<td>Java详解</td>
		<td>张孝祥</td>
		<td>39.9元</td>
		<td>2</td>
		<td>79.8元</td>
		<td><a href="javascript:alert('删除购物项成功！');">删除</a></td>
	</tr>

	<tr>
		<td colspan="7" align="right" style="font-size: 15pt; font-weight: 900">
			合计：319.2元
		</td>
	</tr>
	<tr>
		<td colspan="7" align="right" style="font-size: 15pt; font-weight: 900">
			<a id="buy" href="<c:url value='/jsps/order/desc.jsp'/>"></a>
		</td>
	</tr>
</table>
</body>
</html>
