<%@page import="java.sql.*"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="utilities.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Fortex Database Engine | Home</title>
      <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    

<style type="text/css">
    #title span {
font-family: "Montserrat", sans-serif;
  color: #ba8b02;
    line-height: 25px;
    font-size: 25px;
    letter-spacing: 2px;
}

#firstNavbar{
    background-image: linear-gradient(to right, #00004c, #6666ff, #00004c);
}

#secondNavbar{
    margin-top: 61px; 
    position: absolute; 
    z-index: 4; 
    background-image: linear-gradient(to right,  #001B2A, #001B2A);  border-top: 1px white solid;
}

</style>

</head>
<body>

<!-- FORTEX WALA HEADER NUMBER 1 WITH IMAGE OF THE USER AS DROPDOWN -->
<nav class="navbar navbar-inverse navbar-fixed-top " id="firstNavbar" >
<div class="container-fluid" id="content">
            <div class="navbar-header" >
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbarTop">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>                        
                        </button>
                        <a style="cursor: pointer;" href="../MAIN_PAGE/main_page.jsp" id="title" class="navbar-brand"><span><b>Fortex</b></span></a>
            </div>
             <div class="collapse navbar-collapse" id="myNavbarTop">
                <ul style="color: white;" class="nav navbar-nav navbar-right">
                            <li>
                                <!-- <img style="margin: 5px 0px 5px 0px;" class="img-circle dp-Image" width="50" height="50" src="..\images\dp.png" alt="User Display Picture"> -->

  <div class="dropdown" style="cursor: pointer; margin-right: 25px;">
      <img style="margin: 5px 0px 5px 0px;" data-toggle="dropdown" class="img-circle dp-Image dropdown-toggle" width="50" height="50" src="../PROFILE/view.jsp" alt="User Display Picture">
    <ul class="dropdown-menu">
      <li><a href="../PROFILE/Avtar.jsp">Profile</a></li>
      <li><a href="../PROFILE/Avtar.jsp">Change Password</a></li>
      <li><a href="../MAIN_PAGE/logout.jsp">Logout</a></li>
    </ul>
  </div>

                            </li>
                        </ul>
            </div>
    </div>
</nav>

<%
//input 
	
String tname =(String)session.getAttribute("current_table");
String dbname=(String)session.getAttribute("current_db");
%>
<%System.out.println(dbname+"  "+tname);%>



<!-- FORTEX WALA HEADER NUMBER 2 WITH IMAGE OF THE USER AS DROPDOWN -->
<nav class="navbar navbar-inverse navbar-fixed-top" id="secondNavbar">
<div class="container-fluid" id="content">
            <div class="navbar-header" >
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbarTop2">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>                        
                        </button>
                        <button style="color: white; margin-left: 30px;" onclick="window.location.href='../create_database/create_database.jsp' " class="btn4 navbar-brand"><span>CREATE DATABASE</span></button>
                        <button style="color: white; margin-left: 10px;" onclick="window.location.href='../drop_database/drop_database.jsp' " class="btn4 navbar-brand"><span>DROP DATABASE</span></button>
            </div>

            <div class="collapse navbar-collapse" id="myNavbarTop2">
                       

<% if (tname == null && dbname == null) { %>
                        <ul style="color: white;" class="nav navbar-nav navbar-right">
                        <li> <button onclick="myFunction()" class="btn4" name="Buttonq"><span> DISPLAY</span></button> </li>
                        <li> <button onclick="myFunction()" class="btn4"  name="Buttonq"><span>INSERT</span></button> </li>
                        <li> <button onclick="myFunction()" class="btn4"><span>SELECT</span></button> </li>
                        <li> <button onclick="myFunction()" class="btn4"><span>UPDATE</span></button> </li>
                        <li> <button onclick="myFunction()" class="btn4"><span>DELETE</span></button> </li>
                        <li> <button onclick="myFunction()" class="btn4"><span>JOIN</span></button> </li>
                        <li style="margin-right: 10px;"> <button onclick="myFunction()" class="btn4"><span>QUERY</span></button> </li>       

                        </ul>

<%}else{%>

                     <ul style="color: white;" class="nav navbar-nav navbar-right">
                        <li> <button onclick="window.location.href='../display/display.jsp'" class="btn4" name="Buttonq"><span> DISPLAY</span></button> </li>
                        <li> <button onclick="window.location.href='../insert/insert.jsp'" class="btn4"  name="Buttonq"><span>INSERT</span></button> </li>
                        <li> <button onclick="window.location.href='../select/select.jsp' " class="btn4"><span>SELECT</span></button> </li>
                        <li> <button onclick="window.location.href='../update/update.jsp' " class="btn4"><span>UPDATE</span></button> </li>
                        <li> <button onclick="window.location.href='../delete/delete.jsp' " class="btn4"><span>DELETE</span></button> </li>
                        <li> <button onclick="window.location.href='../join/join.jsp' " class="btn4"><span>JOIN</span></button> </li>
                        <li style="margin-right: 10px;"> <button onclick="window.location.href='../sql/sql.jsp' " class="btn4"><span>QUERY</span></button> </li>       

                        </ul>



<%}%>
            </div>
    </div>
</nav>

<script type="text/javascript">
    function myFunction() {
        alert('Please select a database name and table name !!');
        window.location.href="../MAIN_PAGE/main_page.jsp"
}
</script>




</body>
</html>


<!--  style="position: absolute; z-index: 2; height: 70px;  background-color: #032027; margin-top: 59px; " -->