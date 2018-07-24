<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="utilities.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
   
String tname = request.getParameter("tablename").trim();
String dbname =(String)session.getAttribute("current_db");
    //dbname="edureka;
     Ddl truncate = new Ddl();
   
	int result = truncate.truncator(tname,dbname);
 
	response.sendRedirect("../truncate_table/truncate_table.jsp");
   %>
</body>
</html>