<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>left</title>
	<link rel="stylesheet" href="<c:url value="/css/basic.css"/> ">
	<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/> ">
	<base target="body">
	<style type="text/css">
		div {
			background: #87CEFA;
			margin: 3px;
			padding: 3px;
		}
	</style>
</head>

<body>
<div>
	<a href="<c:url value='/BookServlet?method=listAll'/>">全部分类</a>
</div>
<c:forEach items="${requestScope.categories}" var="category">
	<div>
		<a href="<c:url value='/BookServlet?method=listBycid&cid=${category.cid}'/>">${category.cname} 分类</a>
	</div>
</c:forEach>
</body>
</html>
