<%@ page language="java" import="java.util.*,java.sql.*,com.xyz.*"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'dealstu.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<jsp:useBean id="mybean" class="com.xyz.Student" scope="page" />
	<jsp:setProperty property="*" name="mybean" />
	<%
		Conndb db1 = new Conndb();
		String myname = request.getParameter("stname");
		String mynum = request.getParameter("stnum");
		String mysex = request.getParameter("stsex");
		String mymajor = request.getParameter("stmajor");
		String mypic = request.getParameter("stpic");
		String sql = "insert into student(stunum,stuname,stusex,stumajor,stupic) values('"
				+ mynum
				+ "','"
				+ myname
				+ "','"
				+ mysex
				+ "','"
				+ mymajor
				+ "','" + mypic + "')";
		//out.println("sql=" + sql);
		int result = 0;
		result = db1.getUpdate(sql);
		if (result > 0) {
			out.println("<script>alert('insert succcessfully!');location.href='main.jsp';</script>");

		}
	%>
</body>
</html>
