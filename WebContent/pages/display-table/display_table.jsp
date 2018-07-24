<%@page import="java.sql.*"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="utilities.*" %>




<!DOCTYPE html>
<html>
<head>
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

          <!-- mycode -->
          <%
             
          String tname  = (String)session.getAttribute("current_table");
          String dbname = (String)session.getAttribute("current_db");
    		//String tname = "authentication";
         	// String dbname = "dbms";

          	Main_connector mc = new Main_connector();
          	
          	Connection con = mc.getConnection(dbname);
          	
          	Statement st=con.createStatement();
          	
          	String query = "select * from "+tname ;
          	ResultSet result = st.executeQuery(query);
          	
          	ResultSetMetaData md;
          	
          	md = result.getMetaData();
          	
          	int count = md.getColumnCount();
          	
          	//mc.closeConnection();
             %>
             <div style="width: 800px; margin-top:120px; max-height: 450px; overflow-x:auto; overflow-y:auto;">           
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
          <!-- end -->


</div>
<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>
</body>
</html>