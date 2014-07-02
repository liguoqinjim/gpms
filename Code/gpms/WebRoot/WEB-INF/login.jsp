<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>登陆</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<!-- Favicon -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/assets/img/favicon.ico"
	type="image/x-icon">
<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Fonts from Font Awsome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/font-awesome.min.css">
<!-- CSS Animate -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/animate.css">
<!-- Custom styles for this theme -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/main.css">

<%--   <link href=" ${pageContext.request.contextPath }/css/bootstrap.css" rel="stylesheet">
<link href=" ${pageContext.request.contextPath }/css/bootstrap-responsive.css" rel="stylesheet"> --%>
<!-- Fonts -->
<!-- <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'> -->
<!-- Feature detection -->
<script src="assets/js/modernizr-2.6.2.min.js"></script>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="assets/js/html5shiv.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<!-- <form class="form-signin" action="${pageContext.request.contextPath }/login.do" method="post">
			<h2 class="form-signin-heading">登陆GPMS</h2>
			<input type="text" class="input-block-level" placeholder="用户名"
				name="username"> <input type="password"
				class="input-block-level" placeholder="密码" name="password">
			<label class="checkbox"> <input type="checkbox"
				value="remember-me"> Remember me </label>
			<button class="btn btn-large btn-primary" type="submit">登陆</button>
		</form> -->
	<section id="login-container">

		<div class="row">
			<div class="col-md-3" id="login-wrapper">
				<div class="panel panel-primary animated flipInY">
					<div class="panel-heading">
						<h3 class="panel-title">登陆</h3>
					</div>
					<div class="panel-body">
						<p>登陆到毕业设计管理系统</p>
						<form class="form-horizontal" role="form"
							action="${pageContext.request.contextPath }/login.do"
							method="post">

							<div class="form-group">
								<div class="col-md-12">
									<input type="text" class="form-control" id="email"
										placeholder="账号" name="username"> <i
										class="fa fa-user"></i>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-12">
									<input type="password" class="form-control" id="password"
										placeholder="密码" name="password"> <i
										class="fa fa-lock"></i>

								</div>
							</div>
							<div class="form-group">
								<div class="col-md-4">
									<a href="javascript:void(0)" class="help-block">忘记密码?</a>
								</div>


								<%-- <c:if test="${error1 != null}">
									<div class="col-md-5">
										<a class="help-block" style="color:red">密码错误！</a>
									</div>
									<c:remove var=${error1 } />
								</c:if> --%>
							</div>
							<div class="form-group">
								<div class="col-md-12">
									<!-- <a href="index.html" class="btn btn-primary btn-block">登陆</a> -->
									<input type="submit" class="btn btn-primary btn-block"
										value="登陆" />
									<hr />
									<!-- <a href="pages-sign-up.html" class="btn btn-default btn-block">Not a member? Sign Up</a> -->
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

	</section>
	<!--Global JS-->
	<script src="assets/js/jquery-1.10.2.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/plugins/waypoints/waypoints.min.js"></script>
	<script src="assets/plugins/nanoScroller/jquery.nanoscroller.min.js"></script>
	<script src="assets/js/application.js"></script>

</body>

</html>

