<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<%@  page import="security.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>signup_page</title>
</head>
<body>
	
	<%
	//getting input from the form 
    //name
	String firstname = request.getParameter("firstname").trim();
	String lastname = request.getParameter("lastname").trim();
	//mail id
	String email =request.getParameter("email").trim();
	//password
	String password = request.getParameter("password").trim();
	//contact number
	String contact =request.getParameter("contact").trim();
	long con_no=Long.parseLong(contact);	
	
	  /////////////////////////////getting encrypted password//////////////////////
	       Md5 m = new Md5();
	      String enpass = m.encrypt(password);
	      
      ////////////////////////////////////////////////////////////////////////////
		
      //loading mysql drivers	
	Class.forName("com.mysql.jdbc.Driver");
	
	 /*creating a connection to the phpadmin, banking_system folder using drivermanager
    class by providing the folder name username and password*/
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/dbms?"+"user=root&password=");
	
	//using prepared to statement to fire the query into mysql server to insert the account into the account table  
	PreparedStatement ps = con.prepareStatement("insert into authentication(id,firstname,lastname,email,enpass,con_no) values(null,?,?,?,?,?)",PreparedStatement.RETURN_GENERATED_KEYS);
	
	//using setstring,setlong,setint  methods to give the values to the sql query 
	
	ps.setString(1, firstname);
	ps.setString(2, lastname);
	ps.setString(3, email);
	ps.setString(4, enpass);
	ps.setLong(5, con_no);
	
	//executing the query and storing the result for verifying the process
	int res=ps.executeUpdate();
	if(res>0)
	{
		System.out.println("row  inserted");
		
		//closing the connection 
		//con.close();
		response.sendRedirect("Index.jsp");
	}
	else
	{
		//this is an error case if there is any problem with the insert statement 
		System.out.println("Issue with the insert");
	
	}
		%>
	
</body>
</html>