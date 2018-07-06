<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>登录</title>
	<!-- Bootstrap -->
	<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
	<link href="<c:url value="/css/basic.css" />" rel="stylesheet">
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script src="<c:url value="/js/jquery-3.3.1.min.js"/>"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/js/bootstrapValidator.js"/>"></script>
</head>

<body>
<div class="col-md-6 col-md-offset-3">
	<h2 class="text-center">登录</h2>
	<br>
	<p class="text-danger text-center">${requestScope.msg }</p>
	<form id="defaultForm" class="form-horizontal" action="<c:url value="/UserServlet"/>" method="post">
		<input type="hidden" name="method" value="login">
		<div class="form-group">
			<label for="inputName3" class="col-sm-2 control-label">用户名</label>
			<div class="col-sm-10">
				<input type="text" name="username" class="form-control" id="inputName3" placeholder="用户名"
				<%--这里<c:choose> 如果 request 中有东西，则说明是登录异常的回显，cookie 则是记录上一次的正确用户名--%>
				<c:choose>
				       <c:when test="${not empty requestScope.formUser}">value="${requestScope.formUser.username}"</c:when>
				       <c:otherwise>value="${cookie.username.value}"</c:otherwise>
				</c:choose>>
			</div>
		</div>
		<div class="form-group">
			<label for="inputPassword3" class="col-sm-2 control-label">密　码</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" id="inputPassword3" name="password" placeholder="密码"
				       value="${requestScope.formUser.password}">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">登录</button>
			</div>
		</div>
	</form>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $('#defaultForm').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                username: {
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_\.]+$/,
                            message: '用户名由必须由数字、字母和下划线组成'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        }
                    }
                }
            }
        });
    });
</script>
</body>
</html>
