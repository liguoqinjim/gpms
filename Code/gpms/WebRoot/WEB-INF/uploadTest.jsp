<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'uploadTest.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href=" ${pageContext.request.contextPath }/css/bootstrap.css" rel="stylesheet">
<link href=" ${pageContext.request.contextPath }/css/bootstrap-responsive.css" rel="stylesheet">


</head>

<body>
	<form action="${pageContext.request.contextPath }/upload.do?flag=uploadXml" method="post" enctype="multipart/form-data">
		<input type="file" name="myFile"><br>
		<input type="submit" value="提交">
	</form>
</body>
</html>
