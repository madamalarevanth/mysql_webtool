<%@page import="java.sql.*"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="utilities.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     
     <%
    	 String tname  = (String)session.getAttribute("current_table");
 			String dbname = (String)session.getAttribute("current_db");
 			String[] colval= request.getParameterValues("name");
 			 Dml cols = new Dml();
 		    
 		    ResultSetMetaData result = cols.selector_front(tname, dbname);
 		    
 		    int count = result.getColumnCount();
 		    
 		    for(int i=1;i<= count;i++)
 		    {
 		    	if(result.getColumnTypeName(i).equals("VARCHAR"))
 		    	{
 		    		String newval =" '";
 		    		newval=newval+colval[i-1]+" ' ";
 		    		colval[i-1]=newval;
 		    	}
 		    	if(result.getColumnTypeName(i).equals("CHAR"))
 		    	{
 		    		String newval =" '";
 		    		newval=newval+colval[i-1]+" ' ";
 		    		colval[i-1] = newval;
 		    	}
 		    	if(result.getColumnTypeName(i).equals("DATE"))
 		    	{
 		    		String newval =" '";
 		    		newval=newval+colval[i-1]+" ' ";
 		    		colval[i-1] = newval;
 		    	}
 		    	
 		    }
 		    
 		    String query="insert into "+tname+" values( ";
 		    
 		    for(int i=0;i<count;i++)
 		    {
 		    	if(i == count-1 )
 		    	{
 		    		query=query+" "+colval[i]+" );";
 		    		continue;
 		    	}
 		    	
 		    	query=query+" "+colval[i]+" ,";
 		    	
 		    	
 		    		
 		    }
 		    
 		
 		   
 			
 			Statement st;
 			Connection con;
 			
 			ResultSet rs;
 			
 			Main_connector mc = new Main_connector();
 			
 			con =mc.getConnection(dbname);
 			st =con.createStatement();
 			
 			st.executeUpdate(query);
 			
 			response.sendRedirect("../insert/insert.jsp");
     
     %>
</body>
</html>