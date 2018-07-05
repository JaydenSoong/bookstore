<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=2">
	<title>用户注册</title>
	<!-- Bootstrap -->
	<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
	<link href="<c:url value="/css/bootstrapValidator.css" />" rel="stylesheet">
	<link href="<c:url value="/css/basic.css" />" rel="stylesheet">

	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script src="<c:url value="/js/jquery-3.3.1.min.js"/>"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/js/bootstrapValidator.js"/>"></script>
</head>
<body>
<div class="col-md-6 col-md-offset-3">
	<h2 class="text-center">注册</h2>
	<br>
	<form id="defaultForm" class="form-horizontal" action="<c:url value="/UserServlet"/>" method="post">
		<input type="hidden" name="method" value="regist"/>
		<div class="form-group" id="nameDiv">
			<label for="inputName3" class="col-sm-2 control-label">用户名</label>
			<div class="col-sm-10">
				<input type="text" name="username" class="form-control" id="inputName3" placeholder="用户名">
				<span class="glyphicon form-control-feedback" id="nameSpan"></span>
			</div>
		</div>
		<div class="form-group">
			<label for="inputPassword3" class="col-sm-2 control-label">密　码</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" id="inputPassword3" name="password" placeholder="密码">
			</div>
		</div>
		<div class="form-group">
			<label for="inputPassword4" class="col-sm-2 control-label">确认密码</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" id="inputPassword4" name="confirmPassword"
				       placeholder="确认密码">
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">邮　箱</label>
			<div class="col-sm-10">
				<input type="email" class="form-control" id="inputEmail3" name="email" placeholder="邮箱">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default" id="btn">注册</button>
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
                    message: '用户名不可用',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        },
                        stringLength: {
                            min: 2,
                            max: 20,
                            message: '用户名长度在 2 - 20 之间'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_\.]+$/,
                            message: '用户名由必须由数字、字母和下划线组成'
                        },
                        remote: {
                            url: "<c:url value="/UserServlet?method=validateUsername"/>",
                            params: "username=" + document.getElementById("inputName3").value,
                            type: 'POST',
                            message: '用户名已经存在'
                        },
                        different: {
                            field: 'password,confirmPassword',
                            message: '用户名和密码不能相同'
                        }
                    }
                },
                email: {
                    validators: {
                        emailAddress: {
                            message: '输入的邮箱格式不正确'
                        },
                        remote: {
                            url: "<c:url value="/UserServlet?method=validateEmail"/>",
                            params: "username=" + document.getElementById("inputEmail3").value,
                            type: 'POST',
                            message: '该邮箱已经被注册'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        identical: {
                            field: 'confirmPassword',
                            message: '两次输入的密码不一致'
                        },
                        different: {
                            field: 'username',
                            message: '用户名和密码不能相同'
                        }
                    }
                },
                confirmPassword: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        identical: {
                            field: 'password',
                            message: '两次输入的密码不一致'
                        },
                        different: {
                            field: 'username',
                            message: '用户名和密码不能相同'
                        }
                    }
                }
            }
        });
    });
</script>
</body>
</html>
