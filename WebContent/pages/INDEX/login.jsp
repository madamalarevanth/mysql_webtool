<%@ page import="java.sql.*"%>
<%@  page import="security.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>user verification page </title>

</head>
<body>
	<%
	//getting input from the form of login2.html
	String email = request.getParameter("email").trim();
	String password = request.getParameter("password").trim();
	
	////////////////////////////////////encrypted password//////////////////
	                Md5 m = new Md5();
	      String enpass = m.encrypt(password);
	      
	////////////////////////////////////////////////
	
	//loading mysql drivers
	Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Driver loaded...");
    
    /*creating a connection to the phpadmin ,banking_system folder using drivermanager
    class by providing the folder name username and password*/
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dbms?"+"user=root&password=");
    System.out.println("Connected to the database");
    
    //creating a statement variable to fire a sql query using createStatement() constructor
    Statement st= con.createStatement();
    
    //sql query to select everything from the tuple where name and password matches the user input  from the tuple authentication 
    String str_qry = "select * from authentication where email='" +email+ "' AND enpass='" +enpass+ "' ";
	
	//firing the query and storing the obtained result iin the result set rst 
	ResultSet rst=st.executeQuery(str_qry);
	
	// if we dont have any value in the resultset it means that there is no such tuple
	//where name and password is matching to the input so he is a invalid user
	if(!rst.next())
	{
		%>
			<script type="text/javascript">
				if (window.confirm('Invalid User'))
				{
				    // They clicked Yes
				    window.location.href='Index.jsp';
				}
				else
				{
				    window.location.href='Index.jsp';
				} 

			</script>	
		<% 

	}
	else 
	{
		
		//else use session variable to store name of the user for further use
		String firstname =  rst.getString("firstname");
		session.setAttribute("nameo",firstname);

 
//closing the connection using the connection variable con 
con.close();

  response.sendRedirect("http://localhost:8080/poj2/pages/MAIN_PAGE/main_page.jsp");
}%>