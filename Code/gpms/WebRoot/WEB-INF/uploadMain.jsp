<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'uploadMain.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href=" ${pageContext.request.contextPath }/css/bootstrap.css" rel="stylesheet">
<link href=" ${pageContext.request.contextPath }/css/bootstrap-responsive.css" rel="stylesheet">


</head>

<body>
	<div class="container">
		<div class="row">
			<div class="span6 offset3">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>#</th>
							<th>教师工号</th>
							<th>教师姓名</th>
							<th>教师电话</th>
							<th>教师Email</th>
						</tr>
					</thead>
					<tbody>
						<!-- <tr><td>#</td><td>教师工号</td><td>教师姓名</td><td>教师电话</td><td>教师Email</td></tr> -->
						<c:forEach items="${teachers }" var="teacher" varStatus="status">
							<tr><td>${status.count }</td><td>${teacher.teacherId }</td><td>${teacher.teacherName }</td><td>${teacher.teacherTel }</td><td>${teacher.teacherEmail }</td></tr>
						</c:forEach>
					</tbody>
				</table>
				<%-- <button onclick="${pageContext.request.contextPath }/teacher.do?flag=addTeacher"></button> --%>
				<!-- <input type="button" onclick="window.location.href='xxx.action'" value="方法1" /> -->
				<input type="button" onclick="window.location.href='${pageContext.request.contextPath }/teacher.do?flag=addTeacher'" value="提交" />
			</div>
		</div>
    </div> <!-- /container -->
</body>
</html>
