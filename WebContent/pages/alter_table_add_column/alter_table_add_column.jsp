
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
	
		  <form class="form-horizontal" action="addcolumn.jsp">
		   
		   <!--   <div class="form-group">
		      <label class="control-label col-sm-offset-5 col-sm-2" for="email">Col1</label>
		      <div class="col-sm-5">
		        <input type="text" class="form-control" id="name" placeholder="Enter Column Name" name="column_name">
		      </div>
		    </div>-->
		    
		     
             
             <div class="form-group">
		      <label class="control-label col-sm-offset-5 col-sm-2" for="email">Column Name:</label>
		      <div class="col-sm-5">
		        <input type="text" class="form-control" id="name" placeholder="Enter Column Name" name="columnname">
		      </div>
		    </div>

		    <div class="form-group">
		      <label class="control-label col-sm-offset-4 col-sm-3" for="email">Data Type:</label>
		      <div class="col-sm-5">
				      <select class="form-control" name="datatype" id="datatype">
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
				      <select class="form-control" name="column_property" id="column_property">
				      	<option value="" disabled selected>Select Property</option>
				      	<option> </option>
						<option>auto_increment</option>
						<option>not null</option>
						<option>unique</option>
				      </select>
		      </div>
		    </div>
		    
		    <br>
		    
		    <div class="form-group">        
		      <div class="col-sm-offset-8 col-sm-3">
		        <button type="submit" class="btn btn-lg btn-primary">Add Column</button>
		      </div>
		    </div>
		  </form>
	</div>
</div>

</div>




<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>
</body>
</html>
