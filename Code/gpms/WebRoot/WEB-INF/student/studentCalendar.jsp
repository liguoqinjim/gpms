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
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/plugins/fullcalendar/css/fullcalendar.css">

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
									class="fa fa-calendar"></i> Calendar</a>
							</li>
							<li><a href="${pageContext.request.contextPath }/studentUrl.do?flag=studentLogout"><i class="fa fa-power-off"></i> Logout</a>
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
						href="${pageContext.request.contextPath }/studentUrl.do?flag=studentMain"><i
							class="fa fa-dashboard"></i><span>首页</span> </a>
					</li>
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
						</ul>
					</li>
					<li class="sub-menu"><a href="javascript:void(0);"><i
							class="fa fa-table"></i><span>上传文档</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/studentUrl.do?flag=studentUploadFile">上传文档</a>
							</li>
						</ul>
					</li>
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
						</ul>
					</li>
				</ul>
			</div>

		</aside>
		<!--sidebar end-->
		<!--main content start-->
		<section class="main-content-wrapper">
			<section id="main-content">
				<div class="content">
                    <div class="row">
                        <div class="col-md-offset-1 col-md-2" id="events">
                            <h2 id="calender-current-day"></h2>
                            <h3 id="calender-current-date"></h3>
                            <div id="external-events">
                                <div class="events-heading">&nbsp;Draggable Events</div>
                                <div class='external-event'>教师出题</div>
                                <div class='external-event'>学生选题</div>
                                <div class='external-event'>确认选题</div>
                                <div class='external-event'>答辩</div>
                                <div class='external-event'>上传附件</div>

                                <div class="checkbox">
                                    <input type="checkbox" value="1" id='drop-remove'>
                                    <label for="drop-remove">Remove after drop</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8" id="cal">
                            <div class="full-cal-header">
                                <div class="pull-left">
                                    <div class="btn-group ">
                                        <button class="btn btn-info" id="cal-prev"><i class="fa fa-angle-left"></i>
                                        </button>
                                        <button class="btn btn-info" id="cal-next"><i class="fa fa-angle-right"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="pull-right">
                                    <div data-toggle="buttons-radio" class="btn-group">
                                        <button class="btn btn-primary active" type="button" id="change-view-month">month</button>
                                        <button class="btn btn-primary " type="button" id="change-view-week">week</button>
                                        <button class="btn btn-primary" type="button" id="change-view-day">day</button>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div id='calendar'></div>

                        </div>

                    </div>
                    <br>
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

	<script
		src="assets/plugins/fullcalendar/js/jquery-ui-1.10.1.custom.min.js"></script>
	<script src="assets/plugins/fullcalendar/js/fullcalendar.min.js"></script>
	<script src="assets/plugins/fullcalendar/js/calendar.js"></script>

</body>

</html>
