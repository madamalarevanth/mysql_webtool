<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Fortex Database | Home</title>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">


  
      <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      html {
      height: 2000px;
      background: linear-gradient(to bottom right, #9DB5D2, #F9EBFF);
      overflow: auto;
}





#title {
  position: absolute;
  color: #FFF;
  text-align: center;
  font-family: "lato", sans-serif;
  font-weight: 300;
  font-size: 50px;
  letter-spacing: 10px;
  margin-top: -60px;
  padding-left: 10px;
}
#title span {
  background: -webkit-linear-gradient(white, #38495a);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

#Footer-at-base{
	position: absolute;
	width: 100%;
	padding-top: 1700px;
}

#Header-at-top{
	position: absolute;
}

#profile-head{
  position: absolute;
   margin-top: 100px;
  margin-left: 100px;
  font-family: "lato", sans-serif;
  font-weight: 300;
  font-size: 50px;
  letter-spacing: 10px;
  z-index: 1;
}

#panel1{
  margin-top: 150px;
  margin-left: 30%;
}

#panel2{
  margin-top: 250px;
  margin-left: 0px;

}


    </style>
    <link rel="shortcut icon" type="image/x-icon" href="images\logo.png" />
</head>

<body>

  <link href='https://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
<div id='stars'></div>
<div id='stars2'></div>
<div id='stars3'></div>
<div id="profile-head">
  <h3 >PROFILE</h3>
</div>
<div>
  <div class=" col-md-4 col-sm-6 col-xs-12">
      <div id="panel1" class="panel panel-default">
        <div class="panel-body" >
          <center>
          <b>Name: <br></b>
        paras revo<br>
      </center>
        </div>
      </div>
    </div>
</div>


    <div class=" col-md-6 col-sm-10 col-xs-12">
      <div id="panel2" class="panel panel-default">
        <div class="panel-body" >
          <center>
          <!-- form to input -->

            <form method="POST" action="sign.php">
            <div class="form-group">
              <input type="text" class="form-control" name="username" placeholder="UserName" required="true" pattern=".{1,}">
            </div>

            <div class="form-group">
              <input type="email" class="form-control" name="email" placeholder="Email" required="true" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
            </div>

            <div class="form-group">
              <input type="text" class="form-control" name="contact" placeholder="Contact" required="true" pattern=".{10}">
            </div>

    </form>


      </center>
          <button class="btn btn-primary form-control" type="submit" value="Submit"  name="btutton">Submit</button>
        </div>
      </div>
    </div>


<div id="Footer-at-base">
<jsp:include page="Footer.jsp"></jsp:include>
</div>

<div id="Header-at-top">
	<jsp:include page="Header2.jsp"></jsp:include>
</div>



</body>

</html>
    