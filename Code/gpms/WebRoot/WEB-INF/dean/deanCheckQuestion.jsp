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
							class="fa fa-dashboard"></i><span>首页</span>
					</a></li>
					<li class="sub-menu active"><a href="javascript:void(0);"><i
							class="fa fa-cogs"></i><span>审核题目</span><i
							class="arrow fa fa-angle-right pull-right"></i>
					</a>
						<ul>
							<li class="active"><a
								href="${pageContext.request.contextPath }/deanUrl.do?flag=deanCheckQuestion">审核题目</a>
							</li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa-table"></i><span>评阅教师分组</span><i
							class="arrow fa fa-angle-right pull-right"></i>
					</a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/deanUrl.do?flag=deanAssessGroup">评阅教师分组</a>
							</li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa fa-tasks"></i><span>确定学生选题</span><i
							class="arrow fa fa-angle-right pull-right"></i>
					</a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/deanUrl.do?flag=deanConfirmVolunteer">确定一二轮选题</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath }/deanUrl.do?flag=deanConfirmVolunteerThree">确定剩余选题</a>
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
					<div class="col-md-12">
						<!--breadcrumbs start -->
						<ul class="breadcrumb">
							<li><a href="#">首页</a>
							</li>
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
								<div id="accordion" class="panel-group accordion">
									<!-- <div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a href="#collapseOne" data-parent="#accordion"
													data-toggle="collapse" class="collapsed">选题1001：计信学院在线考勤系统&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;出题人：周平</a>
											</h4>
										</div>
										<div class="panel-collapse collapse" id="collapseOne"
											style="height: 0px;">
											<div class="panel-body">要求：本系统有三种用户群：
												1、教师：教师登陆系统后后可以对所授课的学生进行考勤录入。考勤统计查询等
												2、管理人员：基本信息维护：学生信息导入、课程信息导入、教师信息导入、
												选课信息导入；查看考勤信息、统计考勤信息。按班级、专业、学生分不同时间段进行统计等
												3、学生登录后可以查看自己的考勤信息。</div>
											<form>
												<div class="col-md-1">
													<button class="btn btn-primary" type="button">通过</button>
												</div>
												<div class="col-md-9">
													<input type="text" class="form-control"
														placeholder="请输入修改意见……">
												</div>
												<div class="col-md-2">
													<input type="submit" class="btn btn-primary" value="不通过上传" />
												</div>
											</form>
										</div>
									</div> -->
									<c:if test="${! empty subjects }">
										<c:forEach items="${subjects }" var="subject"
											varStatus="status">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a href="#collapse${status.count}" data-parent="#accordion"
															data-toggle="collapse" class="collapsed">选题${subject.subjectId
															}：${subject.subjectName}
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;出题人：${subject.teacher.teacherName
															} </a>
													</h4>
												</div>
												<div class="panel-collapse collapse" id="collapse${status.count}"
													style="height: 0px;">
													<div class="panel-body">${subject.subjectInfo }</div>
													<form action="${pageContext.request.contextPath }/accessQuestion.do" method="post" id="form1">
														<div class="col-md-1">
															<input type="hidden" name="subjectId" value="${subject.subjectId }"/>
															<input class="btn btn-primary" type="submit" value="通过"/>
														</div>
													</form>
													<form action="${pageContext.request.contextPath }/notAccessQuestion.do" method="post" id="form2">
														<div class="col-md-9">
															<input type="text" class="form-control"
																placeholder="请输入修改意见……" name="subjectInfo">
															<input type="hidden" name="subjectId" value="${subject.subjectId }">
														</div>
														<div class="col-md-2">
															<input type="submit" class="btn btn-primary"
																value="不通过上传" />
														</div>
													</form>
												</div>
											</div>
										</c:forEach>
										<c:remove var="subjects"/>
									</c:if>
									<!--  	<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a href="#collapseTwo" data-parent="#accordion"
													data-toggle="collapse" class="collapsed">选题1002：计信学院在线考勤系统&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;出题人：周平</a>
											</h4>
										</div>
										<div class="panel-collapse collapse" id="collapseTwo"
											style="height: 0px;">
											<div class="panel-body">1)
												学生活动管理:学院管理人员如学生辅导员登陆后，发布、管理学生活动信息。 2）
												学生查询模块:学生可以查询自己通知信息以及……</div>
											<form>
												<div class="col-md-1">
													<button class="btn btn-primary" type="button">通过</button>
												</div>
												<div class="col-md-10">
													<input type="text" class="form-control"
														placeholder="请输入修改意见……">
												</div>
												<div class="col-md-1">
													<input type="submit" class="btn btn-primary" value="上传" />
												</div>
											</form>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a href="#collapseThree" data-parent="#accordion"
													data-toggle="collapse" class="collapsed">选题1003：计信学院在线考勤系统&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;出题人：周平</a>
											</h4>
										</div>
										<div class="panel-collapse collapse" id="collapseThree">
											<div class="panel-body">
												1)学生活动管理:学院管理人员如学生辅导员登陆后，发布、管理学生活动信息。
												2学生查询模块:学生可以查询自己通知信息以及考勤信息等……</div>
											<form>
												<div class="col-md-1">
													<button class="btn btn-primary" type="button">通过</button>
												</div>
												<div class="col-md-10">
													<input type="text" class="form-control"
														placeholder="请输入修改意见……">
												</div>
												<div class="col-md-1">
													<input type="submit" class="btn btn-primary" value="上传" />
												</div>
											</form>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a href="#collapseFour" data-parent="#accordion"
													data-toggle="collapse" class="collapsed">选题1004：计信学院在线考勤系统&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;出题人：周平</a>
											</h4>
										</div>
										<div class="panel-collapse collapse" id="collapseFour">
											<div class="panel-body">
												1)学生活动管理:学院管理人员如学生辅导员登陆后，发布、管理学生活动信息。
												2学生查询模块:学生可以查询自己通知信息以及考勤信息等……</div>
											<form>
												<div class="col-md-1">
													<button class="btn btn-primary" type="button">通过</button>
												</div>
												<div class="col-md-10">
													<input type="text" class="form-control"
														placeholder="请输入修改意见……">
												</div>
												<div class="col-md-1">
													<input type="submit" class="btn btn-primary" value="上传" />
												</div>
											</form>
										</div>
									</div>
-->
								</div>
							</div>
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
