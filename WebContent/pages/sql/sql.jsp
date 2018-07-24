
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
		  <form class="form-horizontal" action="sqler.jsp">


		    <div class="form-group">
		      <label class="control-label col-sm-offset-2 col-sm-3" for="textarea">Manual Query: </label>
		      <div class="col-sm-7">
				      <textarea placeholder="Please Enter Query Manually Here" class="form-control" rows="8" id="comment" name="query"></textarea>
		      </div>
		    </div>
		    <br>
		    

		    <div class="form-group">        
		      <div class="col-sm-offset-7 col-sm-3">
		        <button style="min-width: 120px;" type="submit" class="btn btn-primary">Run Querry</button>
		      </div>
		    </div>
		   
		  </form>
	</div>
</div>
</div>



<jsp:include page="../MAIN_PAGE/main_page.jsp"></jsp:include>
</body>
</html>