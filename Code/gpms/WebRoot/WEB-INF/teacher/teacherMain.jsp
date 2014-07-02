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
</head>

<body>
	<section id="container">
		<header id="header">
			<!--logo start-->
			<div class="brand">
				<a href="index.html" class="logo"> <span>教师界面</span> </a>
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
							<li><a href="${pageContext.request.contextPath }/teacherUrl.do?flag=teacherCalendar"><i class="fa fa-calendar"></i> Calendar</a>
							</li>
							<li><a href="${pageContext.request.contextPath }/teacherUrl.do?flag=teacherLogout"><i class="fa fa-power-off"></i> Logout</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</header>
		<!--sidebar start-->
		<aside class="sidebar">
			<div id="leftside-navigation" class="nano">
				<ul class="nano-content">
					<li><a
						href="${pageContext.request.contextPath }/teacherUrl.do?flag=teacherMain"><i
							class="fa fa-dashboard"></i><span>首页</span> </a></li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa-cogs"></i><span>出题</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>

							<li><a
								href="${pageContext.request.contextPath }/teacherUrl.do?flag=teacherUploadQuestion">出题</a>
							</li>

						</ul>
					</li>

					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa-cogs"></i><span>下载文档</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>

							<li><a
								href="${pageContext.request.contextPath }/teacherUrl.do?flag=teacherDownloadFile">下载文档</a>
							</li>

						</ul>
					</li>

					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa-table"></i><span>录入功能</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/teacherUrl.do?flag=teacherInputFirstAssess">输入学生初评成绩和意见</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath }/teacherUrl.do?flag=teacherInputMutualAssess">输入学生互评成绩和意见</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath }/teacherUrl.do?flag=teacherInputReplyAssess">输入学生答辩成绩和意见</a>
							</li>
						</ul>
					</li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa fa-tasks"></i><span>修改信息</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/teacherUrl.do?flag=teacherChangePwd">修改密码</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>

		</aside>
		<!--sidebar end-->
		<!--main content start-->
		<section class="main-content-wrapper">
			<section id="main-content">
				<div class="row">
					<c:if test="${!empty notices }">
						<c:forEach items="${notices }" var="notice" varStatus="status">
							<c:choose>
								<c:when test="${status.count % 4 == 1 }">
									<div class="row">
										<div class="col-md-offset-2 col-md-8">
											<div class="panel panel-solid-info">
												<div class="panel-heading">
													<h3 class="panel-title">通知一: ${notice.noticeTitle}</h3>
													<div class="actions pull-right">
														<i class="fa fa-chevron-down"></i>
													</div>
												</div>
												<div class="panel-body">${notice.noticeContent}</div>
												<div class="panel-footer">${notice.noticeTime}</div>
											</div>
										</div>
									</div>
								</c:when>
								<c:when test="${status.count % 4 == 2 }">
									<div class="row">
										<div class="col-md-offset-2 col-md-8">
											<div class="panel panel-solid-success">
												<div class="panel-heading">
													<h3 class="panel-title">通知二: ${notice.noticeTitle}</h3>
													<div class="actions pull-right">
														<i class="fa fa-chevron-down"></i>
													</div>
												</div>
												<div class="panel-body">${notice.noticeContent}</div>
												<div class="panel-footer">${notice.noticeTime}</div>
											</div>
										</div>
									</div>
								</c:when>
								<c:when test="${status.count % 4 == 3 }">
									<div class="row">
										<div class="col-md-offset-2 col-md-8">
											<div class="panel panel-solid-warning">
												<div class="panel-heading">
													<h3 class="panel-title">通知三: ${notice.noticeTitle}</h3>
													<div class="actions pull-right">
														<i class="fa fa-chevron-down"></i>
													</div>
												</div>
												<div class="panel-body">${notice.noticeContent}</div>
												<div class="panel-footer">${notice.noticeTime}</div>
											</div>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="row">
										<div class="col-md-offset-2 col-md-8">
											<div class="panel panel-solid-danger">
												<div class="panel-heading">
													<h3 class="panel-title">通知四: ${notice.noticeTitle}</h3>
													<div class="actions pull-right">
														<i class="fa fa-chevron-down"></i>
													</div>
												</div>
												<div class="panel-body">${notice.noticeContent}</div>
												<div class="panel-footer">${notice.noticeTime}</div>
											</div>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</c:if>
					<c:remove var="notices" />
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

</body>

</html>
