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
<link rel="shortcut icon" href="assets/img/favicon.ico"
	type="image/x-icon">
<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Fonts from Font Awsome -->
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<!-- CSS Animate -->
<link rel="stylesheet" href="assets/css/animate.css">
<!-- Custom styles for this theme -->
<link rel="stylesheet" href="assets/css/main.css">
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
<script>
	function changeColor() {
	document.getElementById('changeBt').disabled = false;
	}
</script>
<body>
	<section id="container">
		<header id="header">
			<!--logo start-->
			<div class="brand">
				<a href="index.html" class="logo"> <span>教务员界面</span>
				</a>
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
							<li><a href="${pageContext.request.contextPath }/adminUrl.do?flag=adminLogout"><i class="fa fa-power-off"></i> Logout</a>
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
						href="${pageContext.request.contextPath }/adminUrl.do?flag=adminMain"><i
							class="fa fa-dashboard"></i><span>首页</span>
					</a></li>
					<li class="sub-menu active"><a href="javascript:void(0);"><i
							class="fa fa-cogs"></i><span>数据导入</span><i
							class="arrow fa fa-angle-right pull-right"></i>
					</a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/adminUrl.do?flag=adminUploadTeacher">教师数据导入</a>
							</li>
							<li class="active"><a
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
							class="arrow fa fa-angle-right pull-right"></i>
					</a>
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
							class="arrow fa fa-angle-right pull-right"></i>
					</a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/adminUrl.do?flag=adminBulkChanges">批量修改</a>
							</li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa fa-tasks"></i><span>统计</span><i
							class="arrow fa fa-angle-right pull-right"></i>
					</a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/adminUrl.do?flag=adminStatistics">统计</a>
							</li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa fa-tasks"></i><span>重置学生密码</span><i
							class="arrow fa fa-angle-right pull-right"></i>
					</a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/adminUrl.do?flag=adminResetPwd">重置学生密码</a>
							</li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa fa-tasks"></i><span>开放状态</span><i
							class="arrow fa fa-angle-right pull-right"></i>
					</a>
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
					<div class="col-md-12">
						<!--breadcrumbs start -->
						<ul class="breadcrumb">
							<li><a href="#">首页</a></li>
							<li>数据导入</li>
							<li class="active">学生数据导入</li>
						</ul>
						<!--breadcrumbs end -->
						<h1 class="h1">学生数据导入</h1>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-body">
								<form
									action="${pageContext.request.contextPath }/adminUpload.do?flag=uploadStudent"
									method="post" enctype="multipart/form-data">
									<div class="form-group">
										<div class="col-md-2">
											<input type="file" id="exampleInputFile" name="myFile" onchange="javascript:changeColor();">
										</div>
										<div class="col-md-1">
											<input disabled="disabled" type="submit" class="btn btn-primary" id="changeBt" value="上传" />
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-body">
								<table class="table">
									<thead>
										<tr>
											<th>#</th>
											<th>学号</th>
											<th>姓名</th>
											<th>班级</th>
											<th>电话</th>
											<th>Email</th>
										</tr>
									</thead>
									<tbody>
										<!-- <tr class="active">
										<tr class="success">
										<tr class="info">
										<tr class="warning">
										<tr class="danger"> -->
										<c:if test="${! empty students }">
											<c:forEach items="${students }" var="student"
												varStatus="status">
												<c:choose>
													<c:when test="${status.count % 2 == 0 }">
														<tr>
													</c:when>
													<c:otherwise>
														<c:choose>
															<c:when test="${status.count % 5 == 1 }">
																<tr class="active">
															</c:when>
															<c:when test="${status.count % 5 == 2 }">
																<tr class="success">
															</c:when>
															<c:when test="${status.count % 5 == 3 }">
																<tr class="info">
															</c:when>
															<c:when test="${status.count % 5 == 4 }">
																<tr class="warning">
															</c:when>
															<c:otherwise>
																<tr class="danger">
															</c:otherwise>
														</c:choose>
													</c:otherwise>
												</c:choose>
												<td>${status.count }</td>
												<td>${student.studentId }</td>
												<td>${student.studentName }</td>
												<td>${student.studentClazz }</td>
												<td>${student.studentTel }</td>
												<td>${student.studentEmail }</td>
												</tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>
								<div class="col-sm-offset-11 col-sm-1">
									<button class="btn btn-primary" type="button"
										onclick="window.location.href='${pageContext.request.contextPath }/uploadStudent.do'">
										导入</button>
								</div>
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
