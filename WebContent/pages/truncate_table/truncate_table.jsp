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
    right: 0;
    transform: translateY(-50%);
    text-align: center;
}
	</style>

</head>

<body>

   <%
    	String dbname = (String)session.getAttribute("current_db");
       Main_connector mc = new Main_connector();
       Connection con;
       con = mc.getConnection(dbname);
       DatabaseMetaData tabnam = con.getMetaData();
       ResultSet res = tabnam.getTables(null, null, "%", null);
      %>
      
	<div class="content"><!-- calling wala div -->
<div class="container">
	<div style="text-align: center; max-width: 900px; min-height: 200px;">

    
		<br><br>
		  <form class="form-horizontal" action="truncate.jsp">
		    

		    
		    <div class="form-group">
		      <label class="control-label col-sm-offset-5 col-sm-2" for="email">Table Name:</label>
		      <div class="col-sm-5">
				<select class="form-control" name="tablename" id="sel1" required>
				      <%while(res.next()){ %>
				        <option><%=res.getString(3)%></option>
				      <%}%> 
				</select>	
		      </div>
		    </div>

		    <div class="form-group">
		      <label class="control-label col-sm-offset-5 col-sm-2" for="email"></label>
		      	<div class="col-sm-5">
					<h4>Warning!! The Table once Truncated can not retrive data again.</h4>		      
				</div>
		    </div>
		    
		   
		    <br>
		    

		    <div class="form-group">        
		      <div class="col-sm-offset-8 col-sm-3">
		        <button type="submit" class="btn btn-lg btn-primary">Truncate Table</button>
		      </div>
		    </div>
		  </form>
	</div>
</div>
</div><!-- calling wala div -->
	<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>

</body>
</html>