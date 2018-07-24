<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>database_creator</title>
</head>
<body>

<%
//input
String tname = request.getParameter("tablename").trim();
String dbname=(String)session.getAttribute("current_db");
//dbname="edureka";
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver loaded...");
System.out.println(dbname);
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/"+dbname+"?"+ "user=root&password=");
System.out.println("Connected to the database");

Statement st = con.createStatement();

String[] colname= request.getParameterValues("colname");
String[] datatype= request.getParameterValues("datatype");
String[] constraint= request.getParameterValues("column_property");
String[] lenstr = request.getParameterValues("lenght");
int[] len = new int[lenstr.length];
String pkey=request.getParameter("primary_key");
String query = "create table "+tname+"(";

for(int i=0;i<lenstr.length;i++)
{  
    len[i]=Integer.parseInt(lenstr[i]);	
   
}


for(int i=0;i<lenstr.length-1;i++)
{  
	if(constraint[i] == null)
	{
		System.out.print("tef");
		constraint[i]=" ";
	}
	
   
   
   if(datatype[i].equals("date") )
   {
	   query=query+colname[i]+" "+datatype[i]+" "+constraint[i]+",";	
   }
   else
   {
	   query=query+colname[i]+" "+datatype[i]+"("+len[i]+") "+constraint[i]+",";	
   }
   
}

int i=(lenstr.length)-1;
	if(colname[i] == null)
		colname[i]=" ";
	if(colname[i] == null)
		constraint[i]=" ";
	
	if(datatype[i].equals("date") )
	   {
		   query=query+colname[i]+" "+datatype[i]+" "+constraint[i]+" ";	
	   }
    else
       {
		   query=query+colname[i]+" "+datatype[i]+"("+len[i]+") ";	
	   }
	
   if(!constraint[i].isEmpty())
   {
	   query+=constraint[i]+" ";
   }
	   
String query_last=");";
if(! pkey.isEmpty())
{
	 query_last = ", primary key( "+pkey+" ) );";
}

query+=query_last;

System.out.println(query);

st.executeUpdate(query);

System.out.println("created table");
session.setAttribute("current_table",tname);

con.close();

response.sendRedirect("../create_table/create_table.jsp");	
%>

</body>
</html>