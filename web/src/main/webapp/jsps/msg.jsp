<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>${msg}</title>
	<link rel="stylesheet" href="<c:url value="/css/basic.css"/> ">
	<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/> ">
</head>

<body>
<h1>${msg }</h1>
<ul>
	<li><a href="<c:url value='/index.jsp'/>">主页</a></li>
	<li><a href="<c:url value='/jsps/user/login.jsp'/>">登录</a></li>
	<li><a href="<c:url value='/jsps/user/regist.jsp'/>">注册</a></li>
</ul>
</body>
</html>
