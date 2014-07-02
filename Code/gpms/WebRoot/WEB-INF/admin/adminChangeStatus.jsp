<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>毕业设计管理系统</title>
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

<link rel="stylesheet"
	href="http://cdn.bootcss.com/twitter-bootstrap/2.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrapSwitch.css">
<link rel="stylesheet"
	href="http://twitter.github.com/bootstrap/assets/js/google-code-prettify/prettify.css">
<!-- Fonts -->
<!-- <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'> -->
<!-- Feature detection -->
<script
	src="${pageContext.request.contextPath }/assets/js/modernizr-2.6.2.min.js"></script>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
<style>
.span4,h1 {
	text-align: center;
}

h1 {
	margin-bottom: 20px;
}

h3 {
	margin-top: 20px;
}
</style>
</head>

<body>
	<section id="container">
		<header id="header">
			<!--logo start-->
			<div class="brand">
				<a href="index.html" class="logo"> <span>教务员界面</span> </a>
			</div>
			<!--logo end-->
			<div class="toggle-navigation toggle-left">
				<button type="button" class="btn btn-default" id="toggle-left"
					data-toggle="tooltip" data-placement="right"
					title="Toggle Navigation">
					<i class="fa fa-bars"></i>
				</button>
			</div>
			<div class="user-nav">
				<ul>
					<li class="dropdown settings"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">${teacher.teacherName } <i
							class="fa fa-angle-down"></i> </a>
						<ul class="dropdown-menu animated fadeInDown">
							<li><a
								href="${pageContext.request.contextPath }/adminUrl.do?flag=adminCalendar"><i
									class="fa fa-calendar"></i> Calendar</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath }/adminUrl.do?flag=adminLogout"><i
									class="fa fa-power-off"></i> Logout</a>
							</li>
						</ul></li>

				</ul>
			</div>
		</header>
		<!--sidebar start-->
		<aside class="sidebar">
			<div id="leftside-navigation" class="nano">
				<ul class="nano-content">
					<li><a
						href="${pageContext.request.contextPath }/adminUrl.do?flag=adminMain"><i
							class="fa fa-dashboard"></i><span>首页</span> </a></li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa-cogs"></i><span>数据导入</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/adminUrl.do?flag=adminUploadTeacher">教师数据导入</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath }/adminUrl.do?flag=adminUploadStudent">学生数据导入</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath }/adminUrl.do?flag=adminUploadDept">学院数据导入</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath }/adminUrl.do?flag=adminUploadMajor">专业数据导入</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath }/adminUrl.do?flag=adminUploadClazz">班级数据导入</a>
							</li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa-cogs"></i><span>查询信息</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/adminUrl.do?flag=adminQueryStudent">查询学生信息</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath }/adminUrl.do?flag=adminQueryTeacher">查询教师信息</a>
							</li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa-table"></i><span>批量修改</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/adminUrl.do?flag=adminBulkChanges">批量修改</a>
							</li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa fa-tasks"></i><span>统计</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/adminUrl.do?flag=adminStatistics">统计</a>
							</li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa fa-tasks"></i><span>重置学生密码</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/adminUrl.do?flag=adminResetPwd">重置学生密码</a>
							</li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa fa-tasks"></i><span>开放状态</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/adminUrl.do?flag=adminChangeStatus">开放状态</a>
							</li>
						</ul></li>
				</ul>
			</div>

		</aside>
		<!--sidebar end-->
		<!--main content start-->
		<section class="main-content-wrapper">
			<section id="main-content">
				<div class="row">
					<form role="form" class="form-horizontal"
						action="${pageContext.request.contextPath }/changeStatus.do"
						method="post">
						<div class="col-md-12">
							<!--breadcrumbs start -->
							<ul class="breadcrumb">
								<li><a href="#">首页</a></li>
								<li>开放状态</li>
								<li class="active">开放状态</li>
							</ul>
							<!--breadcrumbs end -->
							<h1 class="h1">开放状态</h1>
						</div>
						<div class="col-md-12">
							<div class="col-md-4">
								<div class="panel panel-solid-default">
									<div class="panel-heading">
										<h3 class="panel-title">教师出题状态</h3>
										<div class="actions pull-right">
											<i class="fa fa-chevron-down"></i>
										</div>
									</div>
									<c:choose>
										<c:when test="${status1 == 1}">
											<div class="panel-body">
												<div class="switch switch-large">
													<input type="hidden" id="status1" name="status1" value="1">
													<input type="checkbox" checked
														onchange="javascript:if(this.checked){document.getElementById('status1').value='1';}else{document.getElementById('status1').value='0';}" />
												</div>
											</div>
										</c:when>
										<c:otherwise>
											<div class="panel-body">
												<div class="switch switch-large">
													<input type="hidden" id="status1" name="status1" value="0">
													<input type="checkbox"
														onchange="javascript:if(this.checked){document.getElementById('status1').value='1';}else{document.getElementById('status1').value='0';}" />
												</div>
											</div>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="col-md-4">
								<div class="panel panel-solid-primary">
									<div class="panel-heading">
										<h3 class="panel-title">学生第一轮选题状态</h3>
										<div class="actions pull-right">
											<i class="fa fa-chevron-down"></i>
										</div>
									</div>
									<c:choose>
										<c:when test="${status2 == 1}">
											<div class="panel-body">
												<div class="switch switch-large">
													<input type="hidden" value="1" id="status2" name="status2">
													<input type="checkbox" checked name="status2"
														onchange="javascript:if(this.checked){document.getElementById('status2').value='1';}else{document.getElementById('status2').value='0';}" />
												</div>
											</div>
										</c:when>
										<c:otherwise>
											<div class="panel-body">
												<div class="switch switch-large">
													<input type="hidden" value="0" id="status2" name="status2">
													<input type="checkbox"
														onchange="javascript:if(this.checked){document.getElementById('status2').value='1';}else{document.getElementById('status2').value='0';}" />
												</div>
											</div>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							<div class="col-md-4">
								<div class="panel panel-solid-primary">
									<div class="panel-heading">
										<h3 class="panel-title">学生第二轮选题状态</h3>
										<div class="actions pull-right">
											<i class="fa fa-chevron-down"></i>
										</div>
									</div>
									<c:choose>
										<c:when test="${status3 == 1}">
											<div class="panel-body">
												<div class="switch switch-large">
													<input type="hidden" value="1" id="status3" name="status3">
													<input type="checkbox" checked name="status3"
														onchange="javascript:if(this.checked){document.getElementById('status3').value='1';}else{document.getElementById('status3').value='0';}" />
												</div>
											</div>
										</c:when>
										<c:otherwise>
											<div class="panel-body">
												<div class="switch switch-large">
													<!-- <input type="hidden" value="0" id="status3" name="status3"> -->
													<input type="hidden" value="0" id="status3" name="status3">
													<input type="checkbox" name="status3"
														onchange="javascript:if(this.checked){document.getElementById('status3').value='1';}else{document.getElementById('status3').value='0';}" />

												</div>
											</div>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="col-md-4">
								<div class="panel panel-solid-success">
									<div class="panel-heading">
										<h3 class="panel-title">学生上传文档状态</h3>
										<div class="actions pull-right">
											<i class="fa fa-chevron-down"></i>
										</div>
									</div>
									<c:choose>
										<c:when test="${status4 == 1}">
											<div class="panel-body">
												<div class="switch switch-large">
													<input type="hidden" id="status4" name="status4" value="1">
													<input type="checkbox" checked
														onchange="javascript:if(this.checked){document.getElementById('status4').value='1';}else{document.getElementById('status4').value='0';}" />
												</div>
											</div>
										</c:when>
										<c:otherwise>
											<div class="panel-body">
												<div class="switch switch-large">
													<input type="hidden" id="status4" name="status4" value="0">
													<input type="checkbox"
														onchange="javascript:if(this.checked){document.getElementById('status4').value='1';}else{document.getElementById('status4').value='0';}" />
												</div>
											</div>
										</c:otherwise>
									</c:choose>
									<c:remove var="status1" />
									<c:remove var="status2" />
									<c:remove var="status3" />
									<c:remove var="status4" />
								</div>
							</div>
						</div>
						<div class="col-md-offset-1 col-md-12">
							<input type="submit" class="btn btn-primary " value="确定状态" />
						</div>
					</form>
				</div>
			</section>
		</section>
		<!--main content end-->
	</section>
	<!--Global JS-->
	<script src="assets/js/jquery-1.10.2.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/plugins/waypoints/waypoints.min.js"></script>
	<script src="assets/plugins/nanoScroller/jquery.nanoscroller.min.js"></script>
	<script src="assets/js/application.js"></script>


	<script src="http://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
	<script
		src="http://cdn.bootcss.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
	<script
		src="http://twitter.github.com/bootstrap/assets/js/google-code-prettify/prettify.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/js/bootstrapSwitch.js"></script>



	<script>
		window.prettyPrint && prettyPrint();
		$('#mySwitch').on('switch-change', function(e, data) {
			var $el = $(data.el), value = data.value;
			console.log(e, $el, value);
		});

		$('#toggle-state-switch-button').on('click', function() {
			$('#toggle-state-switch').bootstrapSwitch('toggleState');
		});

		$('#toggle-state-switch-button-on').on('click', function() {
			$('#toggle-state-switch').bootstrapSwitch('setState', true);
		});

		$('#toggle-state-switch-button-off').on('click', function() {
			$('#toggle-state-switch').bootstrapSwitch('setState', false);
		});

		$('#btn-destroy-switch').on('click', function() {
			$('#destroy-switch').bootstrapSwitch('destroy');
			$(this).remove();
		});

		$('#btn-create').on(
				'click',
				function() {
					$('#create-switch').wrap('<div class="switch" />').parent()
							.bootstrapSwitch();
					$(this).remove()
				});

		$('#btn-is-active-switch').on('click', function() {
			alert($('#disable-switch').bootstrapSwitch('isActive'));
		});

		$('#btn-toggle-activation-switch').on('click', function() {
			$('#disable-switch').bootstrapSwitch('toggleActivation');
		});

		$('#btn-disable-switch').on('click', function() {
			$('#disable-switch').bootstrapSwitch('setActive', false);
		});

		$('#btn-activate-switch').on('click', function() {
			$('#disable-switch').bootstrapSwitch('setActive', true);
		});
	</script>
</body>

</html>

