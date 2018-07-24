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



	<div class="content"><!-- calling wala div -->
<div class="container">
	<div style="text-align: center; max-width: 900px; min-height: 200px;">

		<br><br>
		  <form class="form-horizontal" action="database_dropper.jsp">
		    
         <% 
       Main_connector mc = new Main_connector();
       Connection con;
       con = mc.getConnection("dbms");
       DatabaseMetaData tabnam = con.getMetaData();
       ResultSet res = tabnam.getCatalogs();
       mc.closeConnection();
     %>
		    
		  <!--    <div class="form-group">
		      <label class="control-label col-sm-offset-5 col-sm-2" for="email">Database Name:</label>
		      <div class="col-sm-5">
		        <input type="text" class="form-control" id="name" placeholder="Enter Database Name" name="databasename">
		      </div>
		    </div>-->
		    
		    <div class="form-group">
		      <label class="control-label col-sm-offset-4 col-sm-3" for="email">Database name</label>
		      <div class="col-sm-5">
				      <select class="form-control" name="databasename" id="sel1">
				      <%while(res.next()){ if(!(res.getString(1).equals("dbms")||res.getString(1).equals("banking_system"))){%>
				        <option><%=res.getString(1)%></option>
				    <%}
				      }%> 
				      }
				      </select>
		      </div>
		    </div>

		    
		   
		    <br>
		    

		    <div class="form-group">        
		      <div class="col-sm-offset-8 col-sm-3">
		        <button type="submit" class="btn btn-lg btn-primary">Drop Database</button>
		      </div>
		    </div>
		  </form>
	</div>
</div>
</div><!-- calling wala div -->
	<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>

</body>
</html>