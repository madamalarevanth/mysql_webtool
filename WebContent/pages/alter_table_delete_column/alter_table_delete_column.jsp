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
	String tname  = (String)session.getAttribute("current_table");
	String dbname = (String)session.getAttribute("current_db");
	
	    Dml cols = new Dml();
	    
	    ResultSetMetaData result = cols.selector_front(tname, dbname );
	    int count = result.getColumnCount();
	    %>


	<div class="content"><!-- calling wala div -->
<div class="container">
	<div style="text-align: center; max-width: 900px; min-height: 200px;">

		<br><br>
		  <form class="form-horizontal" action="deletecolumn.jsp">
		    

		    
		    <div class="form-group">
		      <label class="control-label col-sm-offset-5 col-sm-2" for="email">Column Name:</label>
		      <div class="col-sm-5">
		         <select class="form-control" name="columnname" id="sel1">
				      <%for(int i=1;i<=count;i++){ %>
				        <option><%=result.getColumnName(i)%></option>
				      <%}%> 
				  </select>
		      </div>
		    </div>

		    <div class="form-group">
		      <label class="control-label col-sm-offset-5 col-sm-2" for="email"></label>
		      	<div class="col-sm-5">
					<h4>Warning!! The Column once deleted can not be recovered again.</h4>		      
				</div>
		    </div>
		    
		   
		    <br>
		    

		    <div class="form-group">        
		      <div class="col-sm-offset-8 col-sm-3">
		        <button type="submit" class="btn btn-lg btn-primary">Delete Column</button>
		      </div>
		    </div>
		  </form>
	</div>
</div>
</div><!-- calling wala div -->
	<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>

</body>
</html>