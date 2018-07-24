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
	<div class="container">
 	 <% 
		String tname  = (String)session.getAttribute("current_table");
		String dbname = (String)session.getAttribute("current_db");
	
	    Dml cols = new Dml();
	    
	    ResultSetMetaData result = cols.selector_front(tname, dbname);
	    int count = result.getColumnCount();
	    %>
			<div style="text-align: center; max-width: 900px; min-height: 200px;">

			<br><br>
		  	<form class="form-horizontal" action="insertor.jsp">
		        <%for(int i=1;i<=count;i++){ %>
		        <div class="row">       
				    <div class="form-group">
				      <label  class="control-label col-sm-offset-2 col-sm-2" for="email"> <%=result.getColumnName(i)%>  </label>
				      
				      <div class="col-sm-6">
				        
				        <input type="text" class="form-control" id="name" placeholder="Enter Column value" name="name" required> 				        
				      </div>
				      <label style="text-align:left;" class="col-sm-2" for="email"> <%=result.getColumnTypeName(i)%>  </label>
				      
				    </div>
				  </div>  
				<%}%>
				<div class="row">
			    <div class="form-group">        
			      <div class="col-sm-offset-5 col-sm-3">
			        <button type="submit" class="btn btn-primary">Insert Column</button>
			      </div>
			    </div>
			    </div>
		  	</form>

		</div>
	</div>
</div>


<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>


</body>
</html>
