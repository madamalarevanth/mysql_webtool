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
   <style>
     .content {
    position: absolute;
    z-index: 2;
    top: 50%;
    left: 400px;
    transform: translateY(-50%);
    text-align: center;
}
  </style>
</head>
<body>
    <div class="content">

<%
   
String dbname = (String)session.getAttribute("current_db");
String query1= request.getParameter("query");

	
	Main_connector mc = new Main_connector();
	
	Connection con = mc.getConnection(dbname);
	
	Statement st=con.createStatement();
	
	
	ResultSet result = st.executeQuery(query1);
	
	ResultSetMetaData md;
	
	md = result.getMetaData();
	
	int count = md.getColumnCount();
	
	
   %>


   <div style="width: 800px;  margin-top:120px; max-height: 450px; overflow-x:auto; overflow-y:auto;">           
 <table class="table table-striped table-bordered " style="border:2px solid black;" >
    <thead>
      <tr class="info">
<%for(int i=1;i<=count;i++)
	{
	%>
<th><center><%=md.getColumnName(i)%></center></th>
<% }%>
</tr>
</thead>
    <tbody>
      <tr>

<% 
while(result.next())
{ 
	for(int i=1;i<=count;i++)  
	   {
	   %>
	    <td><%=result.getString(i)%></td>
	<%
	   }
	%>
	</tr>
	<%
	  } 
   mc.closeConnection();
	%>
	    </tbody>
	  </table>
	</div>	 
	</div>

	<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>
</body>
</html>