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
	<title>订单列表</title>
	<link rel="stylesheet" href="<c:url value="/css/basic.css"/> ">
	<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/> ">
	<style type="text/css">

		div {
			border: solid 2px gray;
			width: 75px;
			height: 75px;
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
<h1>我的订单</h1>

<table border="1" width="100%" cellspacing="0" background="black">

	<tr bgcolor="gray" bordercolor="gray">
		<td colspan="6">
			订单编号：abcdefg　成交时间：2000-01-01 15:30　金额：<font color="red"><b>319.2</b></font>　

			<a href="<c:url value='/jsps/order/desc.jsp'/>">付款</a>

			等待发货
			<a href="javascript:alert('已确认收货！');">确认收货</a>
			订单结束
		</td>
	</tr>

	<tr bordercolor="gray" align="center">
		<td width="15%">
			<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>
		</td>
		<td>书名：Java详解</td>
		<td>单价：39.9元</td>
		<td>作者：张孝祥</td>
		<td>数量：2</td>
		<td>小计：79.8元</td>
	</tr>
	<tr bordercolor="gray" align="center">
		<td width="15%">
			<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>
		</td>
		<td>书名：Java详解</td>
		<td>单价：39.9元</td>
		<td>作者：张孝祥</td>
		<td>数量：2</td>
		<td>小计：79.8元</td>
	</tr>
	<tr bordercolor="gray" align="center">
		<td width="15%">
			<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>
		</td>
		<td>书名：Java详解</td>
		<td>单价：39.9元</td>
		<td>作者：张孝祥</td>
		<td>数量：2</td>
		<td>小计：79.8元</td>
	</tr>


	<tr bgcolor="gray" bordercolor="gray">
		<td colspan="6">
			订单编号：abcdefg　成交时间：2000-01-01 15:30　金额：<font color="red"><b>319.2</b></font>　

			<a href="<c:url value='/jsps/order/desc.jsp'/>">付款</a>

			等待发货
			<a href="javascript:alert('已确认收货！');">确认收货</a>
			订单结束
		</td>
	</tr>

	<tr bordercolor="gray" align="center">
		<td width="15%">
			<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>
		</td>
		<td>书名：Java详解</td>
		<td>单价：39.9元</td>
		<td>作者：张孝祥</td>
		<td>数量：2</td>
		<td>小计：79.8元</td>
	</tr>
	<tr bordercolor="gray" align="center">
		<td width="15%">
			<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>
		</td>
		<td>书名：Java详解</td>
		<td>单价：39.9元</td>
		<td>作者：张孝祥</td>
		<td>数量：2</td>
		<td>小计：79.8元</td>
	</tr>
	<tr bordercolor="gray" align="center">
		<td width="15%">
			<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>
		</td>
		<td>书名：Java详解</td>
		<td>单价：39.9元</td>
		<td>作者：张孝祥</td>
		<td>数量：2</td>
		<td>小计：79.8元</td>
	</tr>

	<tr bgcolor="gray" bordercolor="gray">
		<td colspan="6">
			订单编号：abcdefg　成交时间：2000-01-01 15:30　金额：<font color="red"><b>319.2</b></font>　

			<a href="<c:url value='/jsps/order/desc.jsp'/>">付款</a>

			等待发货
			<a href="javascript:alert('已确认收货！');">确认收货</a>
			订单结束
		</td>
	</tr>

	<tr bordercolor="gray" align="center">
		<td width="15%">
			<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>
		</td>
		<td>书名：Java详解</td>
		<td>单价：39.9元</td>
		<td>作者：张孝祥</td>
		<td>数量：2</td>
		<td>小计：79.8元</td>
	</tr>
	<tr bordercolor="gray" align="center">
		<td width="15%">
			<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>
		</td>
		<td>书名：Java详解</td>
		<td>单价：39.9元</td>
		<td>作者：张孝祥</td>
		<td>数量：2</td>
		<td>小计：79.8元</td>
	</tr>
	<tr bordercolor="gray" align="center">
		<td width="15%">
			<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>
		</td>
		<td>书名：Java详解</td>
		<td>单价：39.9元</td>
		<td>作者：张孝祥</td>
		<td>数量：2</td>
		<td>小计：79.8元</td>
	</tr>

	<tr bgcolor="gray" bordercolor="gray">
		<td colspan="6">
			订单编号：abcdefg　成交时间：2000-01-01 15:30　金额：<font color="red"><b>319.2</b></font>　

			<a href="<c:url value='/jsps/order/desc.jsp'/>">付款</a>

			等待发货
			<a href="javascript:alert('已确认收货！');">确认收货</a>
			订单结束
		</td>
	</tr>

	<tr bordercolor="gray" align="center">
		<td width="15%">
			<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>
		</td>
		<td>书名：Java详解</td>
		<td>单价：39.9元</td>
		<td>作者：张孝祥</td>
		<td>数量：2</td>
		<td>小计：79.8元</td>
	</tr>
	<tr bordercolor="gray" align="center">
		<td width="15%">
			<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>
		</td>
		<td>书名：Java详解</td>
		<td>单价：39.9元</td>
		<td>作者：张孝祥</td>
		<td>数量：2</td>
		<td>小计：79.8元</td>
	</tr>
	<tr bordercolor="gray" align="center">
		<td width="15%">
			<div><img src="<c:url value='/book_img/9317290-1_l.jpg'/>" height="75"/></div>
		</td>
		<td>书名：Java详解</td>
		<td>单价：39.9元</td>
		<td>作者：张孝祥</td>
		<td>数量：2</td>
		<td>小计：79.8元</td>
	</tr>

</table>
</body>
</html>
