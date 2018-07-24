
<!DOCTYPE html>
<html>
<head>
		<style>

.content {
    position: absolute;
    z-index: 2;
    right: 0;
    margin-top: 60px;
}
	</style>


  <script type='text/javascript'>

        function multiplyNode() {
        	    var count = document.getElementById("column").value;
        	    var container = document.getElementById("targetElement");
        	            	    
	    	for (var i = 0, copy; i < count; i++) {
				var div = document.createElement('tr');
				div.setAttribute('class', 'someClass');
				div.innerHTML = document.getElementById('pzz').innerHTML;
				document.getElementById('targetElement').appendChild(div);
	   		}
		}

		function deleteNodes(){
			var container = document.getElementById("targetElement");
			if (container.hasChildNodes()) {
                container.removeChild(container.lastChild);
            }

		}

    </script>


</head>
<body>
  <% int count=0;
   session.setAttribute("count", count); %>
<div class="content">
<div class="container" style="margin-top: 100px;">
	<div style="text-align: center; max-width: 900px; min-height: 200px;">

		<br><br>
	
		  <form class="form-horizontal" action="createtable.jsp">
		   
             <div class="form-group">
		      <label class="control-label col-sm-offset-5 col-sm-2" for="email">Table Name:</label>
		      <div class="col-sm-5">
		        <input type="text" class="form-control" id="name" placeholder="Enter Column Name" name="tablename" required>
		      </div>
		    </div>
		    
		     <div class="form-group">
		      <label class="control-label col-sm-offset-5 col-sm-2" for="email">Add Columns:</label>
		      <div class="col-sm-3">
		        <input type="text" class="form-control" id="column" name="column" placeholder="Enter number of columns" min="0" required>		   
		      </div>
		      <a onclick="multiplyNode();" type="submit" class="btn btn-primary col-sm-1">Add</a>
		      <a onclick="deleteNodes();" type="submit" class="btn btn-primary col-sm-1">Remove</a>

		    </div>

		  <br>



		<div class="container" style="min-width: 500px; max-width: 800px; margin-left: 250px; overflow-y: auto; max-height: 350px;">  
		    <table class="table table-striped table-bordered" style="border: 2px solid black; ">
		    	<thead>
		    		<tr class="info">
		    			<th><center>Column Name</center></th>
		    			<th><center>Data Type</center></th>
		    			<th><center>Length</center></th>
		    			<th><center>Property</center></th>
		    		</tr>
		    	</thead>

		    	<tbody id="targetElement">

<!-- ROW ONE -->		
<script type="text/html" id="pzz">    		
		    		<tr>
<!-- 1 -->
		    			<td>
		    				<center>
		    				<div class="form-group">
							      <div class="col-sm-12">
							        	<input type="text" class="form-control" id="name" placeholder="Enter column name" name="colname" required>
							      </div>
							</div>
		    				</center>
		    			</td>
<!-- 2 -->
		    			<td>
		    				<center>
								<div class="form-group">
								      <div class="col-sm-12">
										      <select class="form-control" name="datatype" id="dataTypes" required>
										      	<option value=" " disabled selected>Select DataType</option>
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
		    				</center>
		    			</td>
<!-- 3 -->
		    			<td>
		    				<center>
		    				<div class="form-group">
							      <div class="col-sm-12">
							        	<input type="text" class="form-control" id="name" placeholder="Enter Data Length" name="lenght" required>
							      </div>
							</div>
		    				</center>
		    			</td>
<!-- 4 -->
		    			<td>
		    				<center> 
		    						<div class="form-group">
								      	<div class="col-sm-12">
										    <select class="form-control" name="column_property" id="dataTypes" required>
										    	<option value="" disabled selected>Select Property</option>
												<option> </option>
										      	<option>auto_increment</option>
										      	<option>not null</option>
										      	<option>unique</option>
										    </select>
								    	</div>
								    </div>										    			
		    				</center>
		    			</td>
		    		</tr>
</script>
<!-- One Row is Fininshed here .. REVANTH apply FOR loop till here for repeating the rows starting from the comment ROW ONE. -->
						<!-- <tr>
		    				<div class="form-group">
							      <div class="col-sm-12">
							        	<input type="text" class="form-control" id="name" placeholder="Enter primary key columns with , for compound " name="primary_key">
							      </div>
							</div>
		    			</tr> -->



		    	</tbody>		   
		    </table>							
		</div>
<br>
 						<div class="form-group">
		      <label class="control-label col-sm-offset-5 col-sm-2" for="email">Primary Key:</label>
		      <div class="col-sm-5">
		        <input type="text" class="form-control" id="name" placeholder="Enter Primary Key if any" name="primary_key" required>
		      </div>
		    </div>
		    
		    
		    <br>
		    
		    
		    
		    <div class="form-group">        
		      <div class="col-sm-offset-7 col-sm-3">
		        <button type="submit" class="btn btn-lg btn-primary">Create Table</button>
		      </div>
		    </div>
		  </form>
	</div>
</div>

</div>




<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>
</body>
</html>
