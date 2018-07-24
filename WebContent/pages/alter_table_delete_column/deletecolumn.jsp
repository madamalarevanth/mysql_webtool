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
   
String tname = (String)session.getAttribute("current_table");
String dbname =(String)session.getAttribute("current_db");
String column1 =request.getParameter("columnname").trim();

//tname="dep";
//dbname = "edureka" ;

     Ddl col = new Ddl();
   
	int result = col.deletecolumn(tname,dbname,column1);%>
	<marquee><h2 style="color: green;"><i>- column  has been deleted-</i></h2></marquee><br/><br/>
	<% response.sendRedirect("../alter_table_delete_column/alter_table_delete_column.jsp");
		%>
		

		
</body>
</html>