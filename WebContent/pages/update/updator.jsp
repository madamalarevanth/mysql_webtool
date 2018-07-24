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
String cols   = request.getParameter("column_name");
String value   = request.getParameter("new_value");
String cond   = request.getParameter("conditions");

	
	Main_connector mc = new Main_connector();
	
	Connection con = mc.getConnection(dbname);
	
	Statement st=con.createStatement();
	
	System.out.print(cols);
	
	String query = "update "+tname+" set "+cols+ "= "+value+" where "+cond ;
    
	System.out.print(query);
	
	st.executeUpdate(query);
	
	response.sendRedirect("update.jsp");
	
%>
<marquee><h2 style="color: green;"><i>- column  has been added-</i></h2></marquee><br/><br/>
	
</body>
</html>