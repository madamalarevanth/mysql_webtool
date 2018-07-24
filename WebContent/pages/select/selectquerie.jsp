<%@page import="java.sql.*"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="utilities.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

<%
   
String tname  = (String)session.getAttribute("current_table");
String dbname = (String)session.getAttribute("current_db");
String cond   = request.getParameter("conditions");
String[] cols = request.getParameterValues("column_names");
String str=cols[0];
  
	for(int i=1;i<cols.length;i++)
	{
		 str = str +","+cols[i];
	   
	}

	Main_connector mc = new Main_connector();
	
	//dbname="dbms";
	
	Connection con = mc.getConnection(dbname);
	
	Statement st=con.createStatement();
	
	//tname="authentication";
	String query;
	if(cond.isEmpty())
	{
		query = "select "+str+" from "+tname ;
		System.out.println(query);
		
	}
	else
	{
	query = "select "+str+" from "+tname+" where "+cond ;
	}
	
	
	ResultSet result = st.executeQuery(query);
	
	ResultSetMetaData md;
	
	md = result.getMetaData();
	
	int count = md.getColumnCount();
	
	
   %>
   <div class="content">
<div style="width: 800px;  margin-top:120px; max-height: 450px; overflow-x:auto; overflow-y:auto;">           
 <table class="table table-striped table-bordered " style="border:2px solid black;" >
    <thead>
      <tr class="info">
<%for(int i=1;i<=count;i++)
	{
	%>
<th><center><%=md.getColumnName(i)%></center></th>
<% }%>
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
	%>
	    </tbody>
	  </table>
	</div>	
	</div> 
</body>
<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>

</html>