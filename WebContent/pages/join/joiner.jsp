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
<div class="content">
<%
   

String dbname = (String)session.getAttribute("current_db");
String t1  = request.getParameter("table1").trim();
String t2 = request.getParameter("table2").trim();
String cond   = request.getParameter("conditions");
String nat = request.getParameter("natural_join");
String join = request.getParameter("value").trim();

	
	Main_connector mc = new Main_connector();
	
	Connection con = mc.getConnection(dbname);
	
	Statement st=con.createStatement();
	String query;
	
	if(nat == null)
	{
		nat=" ";
	}
	if(cond.isEmpty())
	{
		query = "select * from "+t1+" "+nat+" "+join+" "+t2;
		
		if(join.equals("outer join"))
		{
			query = "(select * from "+t1+" "+nat+" left join "+t2+" )union( select * from "+t1+" "+nat+" right join "+t2+")";
		}
	}
	else
	{
	 query = "select * from "+t1+" "+join+" "+t2+" on "+cond ;
	 
	 if(join.equals("outer join"))
		{
			query = "(select * from "+t1+" left join "+t2+" on "+cond +" )union( select * from "+t1+" right join "+t2+" on "+cond +")";
		}
	}
	System.out.println(query);
	
	ResultSet result = st.executeQuery(query);
	
	ResultSetMetaData md;
	
	md = result.getMetaData();
	
	int count = md.getColumnCount();
	
	
   %>
     <div style="width: 1200px;  margin-top:120px; max-height: 450px; overflow-x:auto; overflow-y:auto;">           
 <table class="table table-striped table-bordered " style="border:2px solid black;" >
    <thead>
      <tr class="info" style="">
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
mc.closeConnection();
	%>
	    </tbody>
	  </table>
	</div>
	</div>
	<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>
</body>
</html>