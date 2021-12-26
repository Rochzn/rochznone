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

<title>My JSP 'main.jsp' starting page</title>

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
		<%
			if (session.getAttribute("bean1") == null) {
				out.println("<script>alert('you have no right ro access!');window.close();</script>");

			} else {
				User user1 = (User) session.getAttribute("bean1");
				if (user1.getUsername().equals("Alice")
						&& user1.getUserpass().equals("123456")) {
		%>
		<br> <Br>
		<p>学生信息查询</p>
		<br> <Br>
		<form action="" method="post" name="form1">
			<table width="60%" border="1">
				<tr>
					<td>输入学号查询<input type="text" name="stnum"><input
						type="submit" value="搜索 ">&nbsp;&nbsp;&nbsp;<a
						href="add.jsp">学生信息添加</a>
					<td>
				</tr>


			</table>


		</form>
		<Br> <Br>
		<table width="70%" border="1">
			<tR>
				<td>编号</td>
				<td>学号</td>

				<td>姓名</td>
				<td>性别</td>
				<td>专业</td>
				<td>照片</td>
				<td>
				数据管理
				</td>


			</tR>

			<%
				ResultSet myrs1 = null;
						String sql = "select * from student";
						Conndb mydb = new Conndb();
						myrs1 = mydb.getQuery(sql);
						while (myrs1.next()) {
			%>

			<tr>
				<Td><%=myrs1.getString("id")%></Td>
				<Td><%=myrs1.getString("stunum")%></Td>

				<Td><%=myrs1.getString("stuname")%></Td>

				<Td><%=myrs1.getString("stusex")%></Td>
				<Td><%=myrs1.getString("stumajor")%></Td>
				<Td><img src="<%=myrs1.getString("stupic")%>" width="200" height="200"></img></Td>
				<td>
				<a href="delete.jsp?id=<%=myrs1.getString("id")%>">删除</a>&nbsp;&nbsp;
				<a href="update.jsp?id=<%=myrs1.getString("id")%>">修改</a>
				</td>
 
			</tr>



			<%
				}
			%>





		</table>


		<%
			}

			}
		%>
	</center>
</body>
</html>
