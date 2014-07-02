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

<script>
	function myload() {

		document.getElementById('select2').disabled = true;
		obj2 = document.getElementById('select2').options;
		for (i = 0, k = obj2.length; i < k; i++) {
			if (obj2[i].value == 'x') {
				obj2[i].selected = true;
				break;
			}
		}
		document.getElementById('select3').disabled = true;
		obj3 = document.getElementById('select3').options;
		for (i = 0, k = obj3.length; i < k; i++) {
			if (obj3[i].value == 'x') {
				obj3[i].selected = true;
				break;
			}
		}
		obj1 = document.getElementById('select1').options;
		for (i = 0, k = obj1.length; i < k; i++) {
			if (obj1[i].value == 'x') {
				obj1[i].selected = true;
				break;
			}
		}
		document.getElementById('html3').value = document
				.getElementById('span3').innerHTML;
		document.getElementById('one1').value = "";
		document.getElementById('one2').value = "";
		document.getElementById('two1').value = "";
		document.getElementById('two2').value = "";
	}

	function mychange(val) {
		var one1 = document.getElementById('one1').value;
		var one2 = "";
		var l = document.getElementById('select1').options.length;
		var v = new Array();
		for (i = 0; i < l - 1; i++) {
			v[i] = document.getElementById('select1').options[i + 1].value;
		}
		for (i = 0; i < l - 1; i++) {
			if (one1 == v[i]) {
				one2 = document.getElementById(i + 1).innerHTML;
				i = 1000;
			} else if (one1 == "") {
				one2 = "";
				i = 1000;
			}
		}

		one2 = document.getElementById('one2').value;
		select1_value = document.getElementById('select1').value;
		obj2 = document.getElementById('select2').options;
		if (select1_value != 'x') {
			document.getElementById('select2').disabled = false;
			document.getElementById('select3').disabled = true;
			if (one1 != "") {
				//alert('one'+one1);
				document.getElementById('select2').options.add(new Option(one2,
						one1));
			}
			for (i = 0, k = obj2.length; i < k; i++) {
				if (obj2[i].value == val) {
					obj2[i].selected = true;
					break;
				}
			}

			//ob.remove(ob.selectedIndex);
			obj2[document.getElementById('select2').selectedIndex] = null;
			document.getElementById('one1').value = val;
			HTML3 = document.getElementById('html3').value;
			document.getElementById('span3').innerHTML = HTML3;
			document.getElementById('two1').value = "";
			document.getElementById('two2').value = "";
		} else if (select1_value == 'x') {
			//alert('two'+one1)
			if (one1 != "") {
				document.getElementById('select2').options.add(new Option(one2,
						one1));
			}
			document.getElementById('one1').value = "";
			document.getElementById('one2').value = "";
			document.getElementById('two1').value = "";
			document.getElementById('two2').value = "";
			for (i = 0, k = obj2.length; i < k; i++) {
				if (obj2[i].value == 'x') {
					obj2[i].selected = true;
					break;
				}
			}
			document.getElementById('select2').disabled = true;
			HTML3 = document.getElementById('html3').value;
			document.getElementById('span3').innerHTML = HTML3;
			obj3 = document.getElementById('select3').options;
			for (i = 0, k = obj3.length; i < k; i++) {
				if (obj3[i].value == 'x') {
					obj3[i].selected = true;
					break;
				}
			}
			document.getElementById('select3').disabled = true;
		}
	}

	function mychange2(val) {
		var one1 = document.getElementById('one1').value;
		var one2 = document.getElementById('one2').value;
		var two1 = document.getElementById('two1').value;
		var two2 = "";

		var ll = document.getElementById('select1').options.length;
		var vv = new Array();
		for (i = 0; i < ll - 1; i++) {
			vv[i] = document.getElementById('select1').options[i + 1].value;
		}
		for (i = 0; i < ll - 1; i++) {
			if (two1 == vv[i]) {
				two2 = document.getElementById(vv[i]).innerHTML;
				i = 1000;
			} else if (two1 == "") {
				two2 = "";
				i = 1000;
			}
		}

		two2 = document.getElementById('two2').value;
		select2 = document.getElementById('select2');
		select3 = document.getElementById('select3');
		obj3 = select3.options;
		if (select2.value != 'x') {
			select3.disabled = false;
			if (two1 != "") {
				//alert('no here'+ two1);
				select3.options.add(new Option(two2, two1));
			}
			//开始删除select3中的select2选定的元素
			for (i = 0, k = obj3.length; i < k; i++) {
				if (obj3[i].value == val) {
					obj3[i].selected = true;
					break;
				}
			}
			obj3[select3.selectedIndex] = null;
			//将select3中删除的(select2中选定的)option存入hidden中
			document.getElementById('two1').value = val;

			//开始删除select3中 select1 选定的 option
			select1_value = document.getElementById('select1').value;
			for (i = 0, k = obj3.length; i < k; i++) {
				if (obj3[i].value == select1_value) {
					obj3[i].selected = true;
					obj3[select3.selectedIndex] = null;
					break;
				}
			}
		} else if (select2.value == 'x') {
			select3.options.add(new Option(two2, two1));
			select3.options.add(new Option(one2, one1));
			document.getElementById('two1').value = "";
			document.getElementById('two2').value = "";
			for (i = 0, k = obj3.length; i < k; i++) {
				if (obj3[i].value == 'x') {
					obj3[i].selected = true;
					break;
				}
			}
			select3.disabled = true;
		}
	}
	function mychange3(val) {
		tj.disabled = false;
	}
</script>
<body onload="javascript:myload();">
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
					<li class="sub-menu active"><a href="javascript:void(0);"><i
							class="fa fa-cogs"></i><span>选题</span><i
							class="arrow fa fa-angle-right pull-right"></i> </a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath }/studentUrl.do?flag=studentSelectOne">第一轮选题</a>
							</li>
							<li class="active"><a
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
				<div class="row">
					<div class="col-md-12">
						<!--breadcrumbs start -->
						<ul class="breadcrumb">
							<li><a href="#">首页</a>
							</li>
							<li>选题</li>
							<li class="active">第二轮选题</li>
						</ul>
						<!--breadcrumbs end -->
						<h1 class="h1">第二轮选题</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-body">
								<form role="form" class="form-horizontal" method="POST"
									id="myForm" name="myForm"
									action="${pageContext.request.contextPath }/chooseSubject.do">
									<input type="hidden" id="one1" name="one1" value="" /> <input
										type="hidden" id="one2" name="one2" value="" /> <input
										type="hidden" id="two1" name="two1" value="" /> <input
										type="hidden" id="two2" name="two2" value="" /> <input
										type="hidden" id="html3" name="html3" value="" />
									<div class="form-group">
										<label class="col-sm-2 control-label">第一志愿:</label>
										<div class="col-sm-9">
											<span id="span1"> <select
												class="form-control input-sm" id="select1" name="subjectOne"
												onchange="javascript:mychange(this.options[this.selectedIndex].value);">
													<option value="x">请选择</option>
													<c:if test="${!empty subjects }">
														<c:forEach items="${subjects }" var="subject"
															varStatus="status">
															<option id="${status.count}" value="${subject.subjectId}">选题${subject.subjectId}：${subject.subjectName}</option>
														</c:forEach>
													</c:if>
													<%-- <c:remove var="subjects" /> --%>
											</select> </span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">第二志愿:</label>
										<div class="col-sm-9">
											<span id="span2"> <select
												class="form-control input-sm" id="select2" name="subjectTwo"
												onchange="javascript:mychange2(this.options[this.selectedIndex].value);">

													<option value="x">请选择</option>
													<c:if test="${!empty subjects}">
														<c:forEach items="${subjects }" var="subject"
															varStatus="status">
															<option value="${subject.subjectId}">选题${subject.subjectId}：${subject.subjectName}</option>
														</c:forEach>
														<%-- <c:remove var="${subjects }" /> --%>
													</c:if>
											</select> </span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">第三志愿:</label>
										<div class="col-sm-9">
											<span id="span3"> <select
												class="form-control input-sm" id="select3"
												name="subjectThree" onchange="javascript:mychange3();">
													<option value="x">请选择</option>
													<c:if test="${!empty subjects}">
														<c:forEach items="${subjects }" var="subject"
															varStatus="status">
															<option value="${subject.subjectId}">选题${subject.subjectId}：${subject.subjectName}</option>
														</c:forEach>
														<%-- <c:remove var="${subjects }" /> --%>
													</c:if>
											</select> </span>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-offset-5 col-sm-7">
											<div class="col-md-2">
												<input disabled="disabled" id="tj" type="submit" class="btn btn-primary" value="提交" />
											</div>
											<div class="col-md-2">
												<input type="submit" class="btn btn-primary" value="重置" />
											</div>
										</div>
									</div>
									<input type="hidden" value="2" name="subjectTurn">
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
