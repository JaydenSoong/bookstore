<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>图书列表</title>
	<link rel="stylesheet" href="<c:url value="/css/basic.css"/> ">
	<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/> ">
	<style type="text/css">
		.icon {
			margin: 10px 20px;
			padding: 5px;
			border: solid 1px #afd9ee;
			width: 170px;
			height: 180px;
			text-align: center;
			float: left;
		}
	</style>
</head>

<body>
<c:forEach items="${requestScope.books}" var="book">
	<div class="icon">
		<a href="<c:url value='/BookServlet?method=load&bid=${book.bid}'/>"><img src="<c:url value='${book.image}'/>"/></a>
		<br/>
		<a href="<c:url value='/BookServlet?method=load&bid=${book.bid}'/>">${book.bname}</a>
	</div>
</c:forEach>
</body>
</html>

