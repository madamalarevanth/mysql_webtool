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
String datat = request.getParameter("datatype").trim();
String column_prop =request.getParameter("column_property").trim();
    
     Ddl col = new Ddl();
   //////////////
   
	int result = col.addcolumn(tname,dbname,column1,datat,column_prop);
 
	response.sendRedirect("alter_table_add_column.jsp");
		%>
<marquee><h2 style="color: green;"><i>- column  has been added-</i></h2></marquee><br/><br/>
		
</body>
</html>