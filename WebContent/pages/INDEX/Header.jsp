<head>
<style>

#header-sroll {
    position:fixed;
    height: 100px;
    background-color: #3c3d41;
    font-family: "Montserrat", sans-serif;
    letter-spacing: 2px;
    left:0;
    top:0;
    float:left;
    width:100%;
    -ms-transition:     all 0.3s ease-out;
    -moz-transition:    all 0.3s ease-out;
    -webkit-transition: all 0.3s ease-out;
    -o-transition:      all 0.3s ease-out;
    transition:         all 0.3s ease-out;
}
#header-sroll h4 {
    font-size: 30px;
    text-align: center;
    line-height: 50px;
     -ms-transition:    all 0.3s ease-out;
    -moz-transition:    all 0.3s ease-out;
    -webkit-transition: all 0.3s ease-out;
    -o-transition:      all 0.3s ease-out;
    transition:         all 0.3s ease-out;
}

#header-sroll button {
    font-size: 30px;
    text-align: center;
    line-height: 50px;
     -ms-transition:    all 0.3s ease-out;
    -moz-transition:    all 0.3s ease-out;
    -webkit-transition: all 0.3s ease-out;
    -o-transition:      all 0.3s ease-out;
    transition:         all 0.3s ease-out;
}

#header-sroll.small {
    height: 70px;
    line-height: 35px;
}
#header-sroll.small h4{
    height: 70px;
    line-height: 25px;
    font-size: 25px;
}

#header-sroll.small button{
    height: 40px;
    line-height: 20px;
    font-size: 16px;
}

#navigation-bar{
    float: right;
    padding: 15px;

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
            <a href="#" style="cursor: pointer; color: #ba8b02;" class="navbar-brand"><h4><b>Fortrex</b></h4></a>
            </div>
             <div class="collapse navbar-collapse" id="myNavbar">
            <ul id="navigation-bar" >
              <li>
                <a data-toggle="modal" data-target="#pz"> <button style="background: rgba(0,0,0,0);" class="btn btn-primary btn-lg">Login/Sign Up</button></a>
              </li>
            </ul>
            </div>
        </div> 
    </div>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script>
    $(window).scroll(function () {
        var sc = $(window).scrollTop()
        if (sc > 100) {
            $("#header-sroll").addClass("small")
        } else {
            $("#header-sroll").removeClass("small")
        }
    });
    </script>

<jsp:include page="Form.jsp"/>



</body>

