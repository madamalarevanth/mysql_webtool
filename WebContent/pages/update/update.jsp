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

<div class="content">
<div class="container" style="margin-top: 100px;">
	<div style="text-align: center; max-width: 900px; min-height: 200px;">

		<br><br>
	
		<!-- to get the columns from database //////////////////////////////////////////////////////-->
	<% 
	String tname  = (String)session.getAttribute("current_table");
	String dbname = (String)session.getAttribute("current_db");
	
	    Dml cols = new Dml();
	    
	    ResultSetMetaData result = cols.selector_front(tname, dbname );
	    int count = result.getColumnCount();
	    %>
	    
	    <!-- form ////////////////////////////////////////////////////////////////////////////// -->
		  <form class="form-horizontal" action="updator.jsp">
		   
		   <!--   <div class="form-group">
		      <label class="control-label col-sm-offset-5 col-sm-2" for="email">Col1</label>
		      <div class="col-sm-5">
		        <input type="text" class="form-control" id="name" placeholder="Enter Column Name" name="column_name">
		      </div>
		    </div>-->
		    
		     <div class="form-group">
		      <label class="control-label col-sm-offset-4 col-sm-3" for="email">Update Column:</label>
		      <div class="col-sm-5">
				      <select class="form-control" name="column_name" id="sel1">
				      <%for(int i=1;i<=count;i++){ %>
				        <option><%=result.getColumnName(i)%></option>
				      <%}%> 
				      </select>
		      </div>
		    </div>
             
             <div class="form-group">
		      <label class="control-label col-sm-offset-5 col-sm-2" for="email">New Value:</label>
		      <div class="col-sm-5">
		        <input type="text" class="form-control" id="name" placeholder="Enter Column value" name="new_value" required>
		      </div>
		    </div>
		    
		    <div class="form-group">
		      <label class="control-label col-sm-offset-4 col-sm-3" for="email">Conditions:</label>
		      <div class="col-sm-5">
				      <textarea placeholder="Please Enter The Conditions Here" class="form-control" rows="5" id="comment" name="conditions"></textarea>
		      </div>
		    </div>
		    <br>
		    
		    
		    <div class="form-group">        
		      <div class="col-sm-offset-8 col-sm-3">
		        <button onClick="alertBox();" type="submit" class="btn btn-primary">Update</button>
		      </div>
		    </div>
		  </form>
	</div>
</div>

</div>


		



<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>
</body>
</html>
