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
String datat = request.getParameter("datatype");
String columnp = request.getParameter("column_property");
String check = request.getParameter("foreign_key");
String lenght= request.getParameter("lenght");

		 int result;
		 
     Ddl col = new Ddl();
     if(check==null)
     check=" ";
     System.out.println(tname+dbname+column1+datat+columnp+"sdf"+check+lenght);
     
     if(check.equals("1") )
     {
    	    String ringc = request.getParameter("referencing_column").trim();
			String  redt = request.getParameter("referenced_table");
			String redc = request.getParameter("referenced_column").trim();
			String cons_name = request.getParameter("cons_name").trim();
    	  result = col.foreignkey(tname,dbname,column1,cons_name,ringc,redt,redc);
     }
     else{
	  result = col.modifycolumn(tname,dbname,column1,datat,lenght,columnp);
     }
   
	response.sendRedirect("../alter_table_modify_column/alter_table_modify_column.jsp");
   %>
</body>
</html>