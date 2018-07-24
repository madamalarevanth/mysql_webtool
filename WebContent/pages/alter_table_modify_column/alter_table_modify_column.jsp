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
	    
	    ResultSetMetaData result = cols.selector_front(tname, dbname);
	    int count = result.getColumnCount();
	    %>
<div class="content">
<div class="container" style="margin-top: 100px;">
	<div style="text-align: center; max-width: 900px; min-height: 200px;">

		<br><br>
	
		  <form class="form-horizontal" action="modifycolumn.jsp">
		    
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
		      <label class="control-label col-sm-offset-5 col-sm-2" for="email">Length</label>
		      <div class="col-sm-5">
		        <input type="text" class="form-control" id="lengthOfDatatype" placeholder="Enter Length" name="lenght">
		      </div>
		    </div>

		    <div class="form-group">
		      <label class="control-label col-sm-offset-4 col-sm-3" for="email">New Data Type:</label>
		      <div class="col-sm-5">
				      <select class="form-control" name="datatype" id="dataTypes">
				      		<option value="" disabled selected>Select DataType</option>
				    		<option value="int">Integer</option>
				    		<option value="float">Float</option>
				    		<option value="char">Character</option>
				    		<option value="varchar">Variable Character</option>
				    		<option value="blob">Blob</option>
				    		<option value="date">Date</option>
				    		<option value="datetime">DateTime</option>
				      </select>
		      </div>
		    </div>


		    <div class="form-group">
		      <label class="control-label col-sm-offset-4 col-sm-3" for="email">Column Properties:</label>
		      <div class="col-sm-5">
				      <select class="form-control" name="column_property" id="colProperties" >				      	
				      	<option value="" disabled selected>Select Property</option>
				      	<option> </option>
				      	<option>auto_increment</option>
				      	<option>not null</option>
				      	<option>unique</option>
						<option>primary key</option>						
				      </select>
		      </div>
		    </div>
		    
<div style="margin-left: 200px;" >
				<div class="form-group">
				    <div  class="checkbox">
				    	<label class="col-sm-12">
				    		<input type="checkbox" name="foreign_key" value="1" onclick="enableDisable(this.checked, 'ReferencingCol','ReferencedTab','ReferencedCol','constName','lengthOfDatatype','dataTypes','colProperties')">Foreign Key
				    		<script language="javascript">
				    			function enableDisable(btnEnable, textBoxID1, textBoxID2, textBoxID3, textBoxID4, disableTextBox1, disableTextBox2, disableTextBox3)
							    {
							         document.getElementById(textBoxID1).disabled = !btnEnable;
							         document.getElementById(textBoxID2).disabled = !btnEnable;
							         document.getElementById(textBoxID3).disabled = !btnEnable;
							         document.getElementById(textBoxID4).disabled = !btnEnable;
							         document.getElementById(disableTextBox1).disabled = btnEnable;
							         document.getElementById(disableTextBox2).disabled = btnEnable;
							         document.getElementById(disableTextBox3).disabled = btnEnable;

							    }
				    		</script>
				    	</label>
				    </div>
				</div>

			<div class="form-group">
		      <label class="control-label col-sm-offset-5 col-sm-1" for="email"></label>
		      <div class="col-sm-4">
		        <input type="text" class="form-control" id="constName" placeholder="Enter constraint name" name="cons_name" disabled>
		      </div>
		    </div>
		    
			<div class="form-group">
		      <label class="control-label col-sm-offset-5 col-sm-1" for="email"></label>
		      <div class="col-sm-4">
		        <input type="text" class="form-control" id="ReferencingCol" placeholder="Enter Referencing Column" name="referencing_column" disabled>
		      </div>
		    </div>

		    <div class="form-group">
		      <label class="control-label col-sm-offset-5 col-sm-1" for="email"></label>
		      <div class="col-sm-4">
		        <input type="text" class="form-control" id="ReferencedTab" placeholder="Enter Referenced Table" name="referenced_table" disabled>
		      </div>
		    </div>

		    <div class="form-group">
		      <label class="control-label col-sm-offset-5 col-sm-1" for="email"></label>
		      <div class="col-sm-4">
		        <input type="text" class="form-control" id="ReferencedCol" placeholder="Enter Referenced Column" name="referenced_column" disabled>
		      </div>
		    </div>
</div>

		    <div class="form-group">        
		      <div class="col-sm-offset-8 col-sm-3">
		        <button type="submit" class="btn btn-lg btn-primary">Modify Column</button>
		      </div>
		    </div>
		  </form>
	</div>
</div>

</div>




<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>
</body>
</html>
