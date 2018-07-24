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
       System.out.print(dbname);
       DatabaseMetaData tabnam = con.getMetaData();
       ResultSet res = tabnam.getTables(null, null, "%", null);
 	  	mc.closeConnection();
       
      %>
<div class="content">
<div class="container" style="margin-top: 100px;">
	<div style="text-align: center; max-width: 900px; min-height: 200px;">

		<br><br>
		  <form class="form-horizontal" action="joiner.jsp">
		    
		      <div class="form-group">
		      <label class="control-label col-sm-offset-4 col-sm-3" for="email">Table 1: </label>
		      <div class="col-sm-5">
				      <select class="form-control" name="table1" id="sel1">
				      <%while(res.next()){ %>
				        <option><%=res.getString(3) %></option>
				      <%}%> 
				      </select>
		      </div>
		    </div>
			<%res.beforeFirst();%>
			 <div class="form-group">
		      <label class="control-label col-sm-offset-4 col-sm-3" for="email">Table 2: </label>
		      <div class="col-sm-5">
				      <select class="form-control" name="table2" id="sel1">
				      <%while(res.next()){ %>
				        <option><%=res.getString(3) %></option>
				      <%}%> 
				      </select>
		      </div>
		    </div>


		    <div class="form-group">
		      <label class="control-label col-sm-offset-4 col-sm-3" for="email">Conditions: </label>
		      <div class="col-sm-5">
				      <textarea placeholder="Please Enter The Conditions Here" class="form-control" rows="5" id="comment" name="conditions"></textarea>
		      </div>
		    </div>
		    <br>
		    <div class="form-group">
				    <div  class="form-group">
				    <div  class="checkbox">
				    	<label class="col-xs-offset-3 col-sm-9">
				    		<input type="checkbox" name="natural_join" value="natural" />Natural Join
				    	</label>
				    </div>
				</div>
				</div>
		    <br>

		    <div class="form-group">        
		      <div class="col-sm-offset-4 col-sm-2">
		        <button style="min-width: 120px;" type="submit" class="btn btn-primary" name="value" value="left join">Left Join</button>
		      </div>

		      <div class=" col-sm-2">
		        <button style="min-width: 120px;" type="submit" class="btn btn-primary" name="value" value="right join">Right Join</button>
		      </div>

		      <div class=" col-sm-2">
		        <button style="min-width: 120px;" type="submit" class="btn btn-primary" name="value" value="inner join">Inner Join</button>
		      </div>

		      <div class=" col-sm-2">
		        <button style="min-width: 120px;" type="submit" class="btn btn-primary" name="value" value=" outer join"> Outer Join</button>
		      </div>
		    </div>
	   
		  </form>
	</div>
</div>
</div>

<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>

</body>
</html>
