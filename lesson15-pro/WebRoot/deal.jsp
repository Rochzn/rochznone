<%@ page language="java" import="java.util.*,com.xyz.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'deal.jsp' starting page</title>
    
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
   <br>
   <br>
   <p>判断用户是否存在 </p>
   <jsp:useBean id="mybean" class="com.xyz.User" scope="page"/>
   <jsp:setProperty property="*" name="mybean"/>
   <%session.setAttribute("bean1", mybean); 
   String myname="adaf";
   String mypass="adsfs";
   if(request.getParameter("username")!=null)
   { myname=request.getParameter("username");
   
   }
    if(request.getParameter("userpass")!=null)
   { mypass=request.getParameter("userpass");
   
   }

   ResultSet rs1=null;
   Conndb mycon=new Conndb();
   String sql="select * from user where username='"+myname+"' and userpass='"+mypass+"'";
 // out.println("sql="+sql);
  
   rs1=mycon.getQuery(sql);
   if(rs1.next())
   {
      out.println("<script>alert('login succcessfully!');location.href='main.jsp';</script>");
    
   }else
   {
    out.println("<script>alert('failed');location.href='login.jsp';</script>");
   }
   
   
   
   %>
   
   </center>
  </body>
</html>
