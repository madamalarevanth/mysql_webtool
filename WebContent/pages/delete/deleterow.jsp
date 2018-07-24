<%@page import="java.sql.*"%>
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
   
String tname  = (String)session.getAttribute("current_table");
String dbname = (String)session.getAttribute("current_db");
String cond   = request.getParameter("conditions");

//tname="dep";
//dbname = "edureka" ;
	
	Dml delete = new Dml();
	
	int result =delete.deletor(dbname,tname,cond);
	
	
		response.sendRedirect("../delete/delete.jsp");
	
   
   %>
</body>
</html>