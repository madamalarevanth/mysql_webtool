

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
		  <form class="form-horizontal" action="database_creator.jsp">
		    

		    
		    <div class="form-group">
		      <label class="control-label col-sm-offset-5 col-sm-2" for="email">Database Name:</label>
		      <div class="col-sm-5">
		        <input type="text" class="form-control" id="name" placeholder="Enter Database Name" name="databasename">
		      </div>
		    </div>

		    
		   
		    <br>
		    

		    <div class="form-group">        
		      <div class="col-sm-offset-8 col-sm-3">
		        <button type="submit" class="btn btn-lg btn-primary">Create Database</button>
		      </div>
		    </div>
		  </form>
	</div>
</div>
</div><!-- calling wala div -->
	<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>

</body>
</html>