<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>database_creator</title>
</head>
<body>

<%
String str = request.getParameter("databasename").trim();
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver loaded...");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms","root","");
System.out.println("Connected to the database");

Statement st = con.createStatement();

String query ="DROP DATABASE "+str;

st.executeUpdate(query);

System.out.println("dropped datbase");
 session.setAttribute("current_db",null);

con.close();
response.sendRedirect("drop_database.jsp");
%>

</body>
</html>