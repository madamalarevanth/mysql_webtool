<%@page import="java.sql.*"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="utilities.*" %>
<head>  
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
<style>

  .sidebar {
    position: absolute;
    color: white;
    font-family: 'Montserrat', sans-serif;
    z-index: 2;
    top: 0;
    left: 0;
    bottom: 0;
    padding: 22px 19px 14px;
    border-right: 2px solid #ddd;
    background-color: #f0f2f5;

    display: block;
    margin: -3px 0 13px;
    font-size: 16px;
    font-weight: bold;

    margin-top: 130px;
    min-width: 350px;
    max-width: 350px;
    min-height: 700px;  /*height of sidebar or u can say the whole page's height*/
}


/*TREE STYLE*/
div.mytree div {
 padding-left:20px;
 background:transparent url(http://www3.telus.net/jianlu58/bullet.gif) no-repeat top left;
}
div.mytree div.parent div {
 display:none;
 cursor:default;
}
div.mytree div.parent {
 cursor:pointer ;
 background:transparent url(http://www3.telus.net/jianlu58/plus.gif) no-repeat top left;
}
div.mytree div.expanded {
 background:transparent url(http://www3.telus.net/jianlu58/minus.gif) no-repeat top left;
}
/*TREE STYLE ENDS*/

</style>
<script type="text/javascript">
  
  var request ;
  
  function sendInfoTable(v) {	
	  console.log(v);	  
	  var url = "../SIDEBAR/printTable.jsp?tablename="+v;  
	  if(window.XMLHttpRequest)
		  {
		     request= new XMLHttpRequest();
		  }
	  else
			  {
			    request= new ActiveXobject("Microsoft.XMLHTTP");
			  }	 
	  try{
		  request.open("GET",url,true);
		  request.send();
	  }
	  catch(e){
		  alert("someecept");
	  }
}
  
  
  function sendInfoDatabase(v) {	
	  console.log(v);	  
	  var url = "../SIDEBAR/printdatabase.jsp?databasename="+v;  
	  if(window.XMLHttpRequest)
		  {
		     request= new XMLHttpRequest();
		  }
	  else
			  {
			    request= new ActiveXobject("Microsoft.XMLHTTP");
			  }	 
	  try{
		  request.open("GET",url,true);
		  request.send();
	  }
	  catch(e){
		  alert("someecept");
	  }
}


</script>
</head>
<body>

<%
//input 
	
String tname =(String)session.getAttribute("current_table");
String dbname1=(String)session.getAttribute("current_db");
%>
<%System.out.println(dbname1+"  "+tname);%>

      <div class="sidebar" style="background:linear-gradient(to right, #3E6FD6,#ccccff);   ">
        <!-- thing inside sidebar here -->
        <div style=" margin-left: 20px;">

<% if (tname == null && dbname1 == null) { %>

          <button onclick="myFunction()" class="btn4"><span>CREATE<br> TABLE</span></button>
          <button onclick="myFunction()" class="btn4"><span>ALTER<br> TABLE</span></button>
          <button onclick="myFunction()" class="btn4"><span>DROP<br> TABLE</span></button>
          <button onclick="myFunction()" style="padding: 14px 10px 14px 10px;" class="btn4"><span>TRUNCATE<br> TABLE</span></button>
<%}else{%>
		  <button onclick="window.location.href='../create_table/create_table.jsp' " class="btn4"><span>CREATE<br> TABLE</span></button>
          <button onclick="window.location.href='../alter_table/alter_table.jsp' " class="btn4"><span>ALTER<br> TABLE</span></button>
          <button onclick="window.location.href='../drop_table/drop_table.jsp' " class="btn4"><span>DROP<br> TABLE</span></button>
          <button onclick="window.location.href='../truncate_table/truncate_table.jsp' " style="padding: 14px 10px 14px 10px;" class="btn4"><span>TRUNCATE<br> TABLE</span></button>
<%}%>

        </div>

        <div style="border-bottom: 1px solid black;"></div>
<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////// TREE -->
        <div style="word-wrap: break-word;">
<!-- ////////////////////////////////////////////////////////////////////////////////////////// -->
<h3>Databases</h3>
    <script src="http://code.jquery.com/jquery-latest.min.js"
        type="text/javascript"></script>
    <script>
    $(function() {
    $('div.mytree div:has(div)').addClass('parent'); 
    $('div.mytree div').click(function() {

        var thistree = $(this);
        thistree.children('div').toggle();
        thistree.filter('.parent').toggleClass('expanded');
        return false;
    });
});
</script>

 <% 
       Main_connector mc = new Main_connector();
       Connection con;
       con = mc.getConnection("dbms");
       DatabaseMetaData tabnam = con.getMetaData();
       ResultSet res = tabnam.getCatalogs();
       mc.closeConnection();
 %>
    
    <!-- HERE CALLS TREE STYLES -->
<div class="mytree" style="padding:12px;border:1px solid #00004c; overflow-y:auto; max-height: 350px;">
    <%while(res.next())
    	{
    	  String dbname=res.getString(1);
    	  Main_connector mc1 = new Main_connector();
    	  Connection con2;
    	  con2 = mc1.getConnection(dbname);
    	  DatabaseMetaData tabname = con2.getMetaData();
    	  ResultSet rs = tabname.getTables(null, null, "%", null);
    	  mc.closeConnection();

    	  %>
        <div><a style="color:black; text-decoration:none; font-family: 'Montserrat', sans-serif;" onclick="sendInfoDatabase('<%=dbname %>')" > <%=dbname %></a>
     
         <%while(rs.next()){%>
              <div> 
               	<a style="color:black; text-decoration:none; font-family: 'Montserrat', sans-serif;" onclick="sendInfoTable('<%=rs.getString(3) %>')" >
              	<%=rs.getString(3) %>
              	</a>
               </div>
            <%}%>
           
        </div>
        
      <%}%>
  </div>   
<!-- ////////////////////////////////////////////////////////////////////////////////////////// -->
        </div>
<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////// TREE ends-->

      </div>


<script type="text/javascript">
    function myFunction() {
        alert('Please select a database name and table name !!');
        window.location.href="../MAIN_PAGE/main_page.jsp"
}
</script>

</body>

</html>





<!-- //////////////////////////////////////////all is well till now and lets see what we can do .  -->