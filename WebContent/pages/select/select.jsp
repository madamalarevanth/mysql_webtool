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
		<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
		<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css'>
</head>
<body>
<div class="content">

<div class="container">
	<div style="text-align: center; max-width: 900px; min-height: 200px;">
	
	<!-- to get the columns from database -->
	<% 
	String tname  = (String)session.getAttribute("current_table");
	String dbname = (String)session.getAttribute("current_db");
	
	    Dml cols = new Dml();
	    
	    ResultSetMetaData result = cols.selector_front(tname, dbname);
	    int count = result.getColumnCount();
	    %>
		<form class="form-horizontal" action="selectquerie.jsp">

		    <div class="form-group">
		      <label class="control-label col-sm-offset-4 col-sm-3" for="email">Select Column to Display:</label>
		      <div class="col-sm-5">

				     				      
				       <div class="row-fluid">
					      <select class="selectpicker form-control" name="column_names" data-show-subtext="true" id="sel1" data-live-search="true" multiple required>
					        <optgroup label="Column Names:">
					        		<option>*</option>
					          	<%for(int i=1;i<=count;i++){ %>
				        			<option><%=result.getColumnName(i)%></option>
				      			<%}%>
					        </optgroup>					 
					      </select>
					    </div>
		      </div>
		    </div>



		    <div class="form-group">
		      <label class="control-label col-sm-offset-4 col-sm-3" for="email">Conditions:</label>
		      <div class="col-sm-5">
				      <textarea placeholder="Please Enter The Conditions Here" name="conditions"class="form-control" rows="5" id="comment"></textarea>
		      </div>
		    </div>


		    <div class="form-group">        
		      <div class="col-sm-offset-8 col-sm-3">
		        <button type="submit" class="btn btn-primary">Select Query</button>
		      </div>
		    </div>
		</form> 

	</div>
</div>

</div>

<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>





  <script src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js'></script>


</body>
</html>
