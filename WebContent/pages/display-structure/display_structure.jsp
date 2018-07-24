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

      <%
    String tname  = (String)session.getAttribute("current_table");
    String dbname = (String)session.getAttribute("current_db");

      Main_connector mc = new Main_connector();
      
      Connection con = mc.getConnection(dbname);
      
      Statement st=con.createStatement();
      DatabaseMetaData tabname = con.getMetaData();
      
      String query = "select * from "+tname ;
      ResultSet result = st.executeQuery(query);
      
      ResultSetMetaData md;
      
      md = result.getMetaData();
      
      int count = md.getColumnCount();
      
      ResultSet re=tabname.getPrimaryKeys(null, null, tname);
      ResultSet ra=tabname.getExportedKeys(null, null, tname);
      re.next();
      ra.next();
      
      //mc.closeConnection();
       %>
<div style="width: 800px;  margin-top:120px; max-height: 450px; overflow-x:auto; overflow-y:auto;">           
 <table class="table table-striped table-bordered " style="border:2px solid black;" >
        <thead>
          <tr class="info">
            <th><center>Columns</center></th>
            <th><center>Datatypes</center></th>
            <th><center>lenght</center></th>
          </tr>
        </thead>
        <tbody>
              <%for(int i=1;i<=count;i++)
              	{
              	%>
                <tr>
              <td><b><%=md.getColumnName(i)%></b></td>
              <td><b><%=md.getColumnTypeName(i)%></b></td>
              <td><b><%=md.getColumnDisplaySize(i)%></b></td>
              </tr>	
              <% }
              %>
        </tbody>
      </table>
      <table class="table table-striped table-bordered " style="border:2px solid black;" >
        <tbody>
       <tr>
              <td><b>primary key</b></td>
              <td><b><%=re.getString("COLUMN_NAME")%></b></td>
              </tr>	
              
              </tbody>
      </table>
    </div>

  </div>
<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>

</body>
</html>