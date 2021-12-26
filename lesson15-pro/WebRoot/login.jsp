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

<title>My JSP 'login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet" href="css/NewFile.css" type="text/css"></link>
</head>

<body>
	<center>
		<br> <Br>
		<p>用户登录</p>
		<br>
		<form action="deal.jsp" method="post" name="form1">
			<table width="40%" border="1">
				<tr>
					<td>用户名</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>用户密码</td>
					<td><input type="password" name="userpass"></td>
				</tr>
				<tr>
					<td>用户类型</td>
					<td><input type="radio" name="usertype" value="1">学生 <input
						type="radio" name="usertype" value="2">教师 <input
						type="radio" name="usertype" value="3">管理员</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="登录">
						<input type="reset" value="重置">
					</td>

				</tr>


			</table>




		</form>



	</center>

</body>
</html>
