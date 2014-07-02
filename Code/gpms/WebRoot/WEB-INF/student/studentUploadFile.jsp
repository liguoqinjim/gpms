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
				<a href="index.html" class="logo"> <span>学生界面</span> </a>
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
						data-toggle="dropdown" href="#">${student.studentName } <i
							class="fa fa-angle-down"></i> </a>
						<ul class="dropdown-menu animated fadeInDown">
							<li><a
								href="${pageContext.request.contextPath }/studentUrl.do?flag=studentCalendar"><i
									class="fa fa-calendar"></i> Calendar</a></li>
							<li><a
								href="${pageContext.request.contextPath }/studentUrl.do?flag=studentLogout"><i
									class="fa fa-power-off"></i> Logout</a></li>
						</ul></li>
				</ul>
			</div>
		</header>
		<!--sidebar start-->
		<aside class="sidebar">
			<div id="leftside-navigation" class="nano">
				<ul class="nano-content">
					<li><a
						href="${pageContext.request.contextPath }/studentUrl.do?flag=studentMain"><i
							class="fa fa-dashboard"></i><span>首页</span> </a></li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa-cogs"></i><span>选题</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/studentUrl.do?flag=studentSelectOne">第一轮选题</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath }/studentUrl.do?flag=studentSelectTwo">第二轮选题</a>
							</li>
						</ul></li>
					<li class="sub-menu active"><a href="javascript:void(0);"><i
							class="fa fa-table"></i><span>上传文档</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>
							<li class="active"><a
								href="${pageContext.request.contextPath }/studentUrl.do?flag=studentUploadFile">上传文档</a>
							</li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa fa-tasks"></i><span>个人信息</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/studentUrl.do?flag=studentViewQuestion">查看选题</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath }/studentUrl.do?flag=studentViewTeacher">查看教师</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath }/studentUrl.do?flag=studentChangePwd">修改密码</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath }/studentUrl.do?flag=studentViewScore">查看成绩</a>
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
							<li>上传文档</li>
							<li class="active">上传文档</li>
						</ul>
						<!--breadcrumbs end -->
						<h1 class="h1">上传文档</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-body">
								<form role="form" class="form-horizontal"
									action="${pageContext.request.contextPath }/uploadFile.do"
									method="post" enctype="multipart/form-data">
									<div class="form-group">
										<label class="col-sm-2 control-label">课题名称:</label>
										<div class="col-sm-3">${subject.subjectName }</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">附件类型:</label>
										<div class="col-sm-3">
											<select class="form-control input-sm" name="attachType">
												<c:if test="${!empty attachmentTypes }">
													<c:forEach items="${attachmentTypes }" var="attachmentType"
														varStatus="status">
														<option value="${attachmentType.attachmentTypeId }">${attachmentType.attachmentTypeName
															}</option>
													</c:forEach>
													<c:remove var="attachmentTypes" />
												</c:if>
											</select>
										</div>
									</div>
									<input type="hidden" name="subjectId" value="${subject.subjectId }">
									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-8">
											<input type="file" id="exampleInputFile" name="myFile">
										</div>
									</div>
								
									<div class="form-group">
										<label class="col-sm-2 control-label">说明：</label>
										<div class="col-sm-8">
											<textarea class="form-control"></textarea>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<div class="col-md-1">
												<input type="submit" class="btn btn-primary" value="上传" />
											</div>
											<div class="col-md-1">
												<input type="submit" class="btn btn-primary" value="关闭" />
											</div>
										</div>
									</div>
								</form>

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
