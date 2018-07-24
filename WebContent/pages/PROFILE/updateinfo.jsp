<%@page import="utilities.Main_connector"%>
<%@ page import="java.sql.*"%>
<%@  page import="security.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 String name =(String)session.getAttribute("nameo");
 String email =request.getParameter("email");
 String contact = request.getParameter("mobNo");

 
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbms?"+"user=root&password=");

Statement st= con.createStatement();



if(email.isEmpty())
{   
	 ResultSet rs=st.executeQuery("select email from authentication where firstname='"+name+"'");
	 rs.next();
	 email=rs.getString(1);
}
if(contact.isEmpty())
{
	 ResultSet rs=st.executeQuery("select con_no from authentication where firstname='"+name+"'");
	 rs.next();
	 contact=rs.getString(1);
}

String str_qry = "update authentication set email= '"+email+"' , con_no= "+contact+" where firstname = '"+name+"' ";

System.out.print(str_qry);

st.executeUpdate(str_qry); 

response.sendRedirect("Avtar.jsp");

%>
</body>
</html>