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

<title>My JSP 'add.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet" href="css/NewFile.css" type="text/css"></link></head>

<body>
	<center>
		<br> <br>
		<p>学生基本信息添加</p>
		<form action="dealstu.jsp" method="post">
			<table width="40%" border="1">
				<Tr>
					<td>学号</td>
					<td><input type="text" name="stnum"></td>
				</Tr>
				<Tr>
					<td>姓名</td>
					<td><input type="text" name="stname"></td>
				</Tr>
				
				<Tr>
					<td>性别</td>
					<td><input type="radio" name="stsex" value="female">女
					
					<input type="radio" name="stsex" value="male">男 
					</td>
				</Tr>
				<Tr>
					<td>专业</td>
					<td><select name="stmajor">
				  <option value="software">软件 </option>
				  <option value="computer science">计算机科学 </option>
				   <option value="software">软件 </option>
				  <option value="computer science">计算机科学 </option>
					
					
					
					</select></td>
				</Tr>
				<Tr>
					<td>图片</td>
					<td><input type="text" name="stpic"></td>
				</Tr>
				
				<tr>
				<td colspan="2" align="center">
				<input type="submit" value="添加 ">
				</td>
				
				</tr>




			</table>




		</form>


	</center>
</body>
</html>
