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
	<title>订单详细</title>
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

		#pay {
			background: url(<c:url value='/images/all.png'/>) no-repeat;
			display: inline-block;
			background-position: 0 -412px;
			margin-left: 30px;
			height: 36px;
			width: 146px;
		}

		#pay:HOVER {
			background: url(<c:url value='/images/all.png'/>) no-repeat;
			display: inline-block;
			background-position: 0 -448px;
			margin-left: 30px;
			height: 36px;
			width: 146px;
		}
	</style>
</head>

<body>
<h1>当前订单</h1>

<table border="1" width="100%" cellspacing="0" background="black">
	<tr bgcolor="gray" bordercolor="gray">
		<td colspan="6">
			订单编号：123456　成交时间：2000-01-01 15:30　金额：<font color="red"><b>319.2元</b></font>
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

</table>
<br/>
<form method="post" action="javascript:alert('别点了，再点就去银行页面了！');" id="form" target="_parent">
	收货地址：<input type="text" name="address" size="50" value="北京市海淀区金燕龙大厦2楼216室无敌收"/><br/>

	选择银行：<br/>
	<input type="radio" name="pd_FrpId" value="ICBC-NET-B2C" checked="checked"/>工商银行
	<img src="../../bank_img/icbc.bmp" align="middle"/>
	<input type="radio" name="pd_FrpId" value="BOC-NET-B2C"/>中国银行
	<img src="../../bank_img/bc.bmp" align="middle"/><br/><br/>
	<input type="radio" name="pd_FrpId" value="ABC-NET-B2C"/>农业银行
	<img src="../../bank_img/abc.bmp" align="middle"/>
	<input type="radio" name="pd_FrpId" value="CCB-NET-B2C"/>建设银行
	<img src="../../bank_img/ccb.bmp" align="middle"/><br/><br/>
	<input type="radio" name="pd_FrpId" value="BOCO-NET-B2C"/>交通银行
	<img src="../../bank_img/bcc.bmp" align="middle"/><br/>
</form>
<a id="pay" href="javascript:document.getElementById('form').submit();"></a>
</body>
</html>
