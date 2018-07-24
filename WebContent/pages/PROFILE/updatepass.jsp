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

String oldpass = request.getParameter("oldpass");
String newpass = request.getParameter("newpass");
 
////checking if old pass is correct////

  			 Md5 m = new Md5();
	      String enpass = m.encrypt(oldpass);
	      
	      Class.forName("com.mysql.jdbc.Driver");
	    
	      	      
	      Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbms?"+"user=root&password=");
	     
	      
	      Statement st= con.createStatement();
	      
	      String str_qry = "select enpass from authentication where firstname='" +name+ "' AND enpass='" +enpass+ "' ";
	  	
		  	ResultSet rst=st.executeQuery(str_qry);
		  	
		  	System.out.println(str_qry);
		  	
		  	if(rst.next())
		  	{
		  		 String enpass1 = m.encrypt(newpass);
		  		 str_qry = "update authentication set enpass='"+enpass1+"' where firstname='" +name+ "'";
		   
		  		st.executeUpdate(str_qry);
		  		 
		  	     response.sendRedirect("Avtar.jsp");
		  	}
		  	else
		  	{
		  	  out.println("Driver loaded...");
		  	}
%>
</body>
</html>