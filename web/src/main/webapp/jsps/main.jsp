<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>网上书店</title>
	<link rel="stylesheet" href="<c:url value="/css/basic.css"/> ">
	<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/> ">
	<style type="text/css">
		.divstyle{border: 1px solid #8c8c8c;padding: 20px 10px;height: 700px}
		.noLeftborder{border-left:none;}
		iframe {
			width: 100%;
			height: 100%;
		}
	</style>
</head>

<body>
<div class="col-md-8 col-md-offset-2 container">
	<header style="background: #4682b4; padding: 0 10px">
		<iframe frameborder="0" src="<c:url value='/jsps/top.jsp'/>" name="top"></iframe>
	</header>
	<aside class="col-md-2 left divstyle">
		<iframe frameborder="0"  src="<c:url value='/jsps/left.jsp'/>" name="left"></iframe>
	</aside>
	<div class="col-md-10 right divstyle noLeftborder">
		<iframe frameborder="0" src="<c:url value='/jsps/body.jsp'/>" name="body"></iframe>
	</div>
</div>
</body>
</html>
