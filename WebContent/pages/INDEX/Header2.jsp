<head>
<style>

#header-sroll {
    position:fixed;
    height: 60px;
    background-color: #3c3d41;
    font-family: "Montserrat", sans-serif;
    letter-spacing: 2px;
    left:0;
    top:0;
    float:left;
    width:100%;
}

#navigation-bar{
    float: right;
    padding: 15px;
}
.dp-Image{
  float: right;
margin: 0px;
margin-right: 5px;
margin-left: 5px;
padding-top: 0px;
}







.dropbtn {
    border: none;
    cursor: pointer;
    margin-right: 100px;

}

.dropdownn {
    position: relative;
    display: inline-block;
}

.dropdownn-content {
    margin-top: 25px;
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 250px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;

}

.dropdownn-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdownn-content a:hover {    
 background-color: #f1f1f1
}

.dropdownn:hover .dropdownn-content {
    display: block;

}

</style>


</head>

<body>

    <div id="header-sroll">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
            </button>
            <a style="color: #ba8b02;" class="navbar-brand"><h4><b>Fortrex</b></h4></a>
            </div>
             <div class="collapse navbar-collapse" id="myNavbar">
            <ul id="navigation-bar">
              <li>


                
                <div class="dropdownn">
                  <a class="dropbtn"> <img class="img-circle dp-Image" width="40" height="40" src="images\dp.png" alt="User Display Picture">
                  </a>
                  <div class="dropdownn-content">
                    <a href="#">Profile</a>
                    <a href="#">Change Password</a>
                    <a href="#">Settings</a>
                    <a href="#">Logout</a>
                  </div>
                </div>



              </li>
            </ul>
            </div>
        </div> 
    </div>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>


</body>

