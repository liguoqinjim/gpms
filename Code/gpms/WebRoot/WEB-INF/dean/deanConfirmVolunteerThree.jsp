<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

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
				<a href="index.html" class="logo"> <span>系主任界面</span> </a>
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
							<li><a href="${pageContext.request.contextPath }/deanUrl.do?flag=deanCalendar"><i class="fa fa-calendar"></i> Calendar</a>
							</li>
							<li><a href="${pageContext.request.contextPath }/deanUrl.do?flag=deanLogout"><i class="fa fa-power-off"></i> Logout</a>
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
						href="${pageContext.request.contextPath }/deanUrl.do?flag=deanMain"><i
							class="fa fa-dashboard"></i><span>首页</span> </a>
					</li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa-cogs"></i><span>审核题目</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/deanUrl.do?flag=deanCheckQuestion">审核题目</a>
							</li>
						</ul>
					</li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa-table"></i><span>评阅教师分组</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/deanUrl.do?flag=deanAssessGroup">评阅教师分组</a>
							</li>
						</ul>
					</li>
					<li class="sub-menu active"><a href="javascript:void(0);"><i
							class="fa fa fa-tasks"></i><span>确定学生选题</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/deanUrl.do?flag=deanConfirmVolunteer">确定一二轮选题</a>
							</li>
							<li class="active"><a
								href="${pageContext.request.contextPath }/deanUrl.do?flag=deanConfirmVolunteerThree">确定剩余选题</a>
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
					<div class="col-md-12">
						<!--breadcrumbs start -->
						<ul class="breadcrumb">
							<li><a href="#">首页</a></li>
							<li>审核题目</li>
							<li class="active">审核题目</li>
						</ul>
						<!--breadcrumbs end -->
						<h1 class="h1">审核题目</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-body">
								<form role="form" class="form-horizontal">
									<div class="form-group">
										<label class="col-sm-2 control-label">剩余学生：</label>
										<div class="col-sm-3">
											<select class="form-control input-sm">
												<c:if test="${!empty students}">
													<c:forEach items="${students }" var="student"
														varStatus="status">
														<option value="${student.studentId }">${student.studentName
															}&nbsp;${student.studentId }</option>
													</c:forEach>
													<c:remove var="students" />
												</c:if>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">剩余选题：</label>
										<div class="col-sm-8">
											<select class="form-control input-sm">
												<c:if test="${!empty subjects }">
													<c:forEach items="${subjects }" var="subject"
														varStatus="status">
														<option value="${subject.subjectId }">${subject.subjectId
															}：${subject.subjectName }</option>
													</c:forEach>
													<c:remove var="subjects" />
												</c:if>
											</select>
										</div>
										<div class="col-sm-1">
											<input type="submit" class="btn btn-primary" value="提交" />
											<!-- 每次选择完一组学生和选题后提交，表单各消失一个选项后再进行下一组分配 -->
										</div>
									</div>
								</form>
							</div>
						</div>
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
