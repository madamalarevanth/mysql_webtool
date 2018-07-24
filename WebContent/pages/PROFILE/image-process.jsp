<%@page import="java.sql.*"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert an Image into MySQL Database</title>
    </head>
    <body>
         <%

String fname=request.getParameter("fname"); 
String lname=request.getParameter("lname"); 
String email=request.getParameter("email"); 
String myloc=request.getParameter("myimg"); 
myloc= "C:\\Users\\REVANTH\\Pictures\\"+myloc;
System.out.println("myloc="+myloc);

Connection conn=null;
PreparedStatement pstmt = null;
ResultSet rs=null;
String url="jdbc:mysql://localhost/dbms";
FileInputStream fis=null;

try{
	
	String name= (String)session.getAttribute("nameo");

Class.forName("com.mysql.jdbc.Driver").newInstance();
conn=DriverManager.getConnection(url, "root", "");
File image= new File(myloc);
int count;
Statement st = conn.createStatement();
ResultSet rst =st.executeQuery("select * from image1 where firstname= '"+name+"' ");
System.out.println(name);
if(!rst.next())
{
	System.out.println("hell");
pstmt = conn.prepareStatement("insert into image1(firstname,image) " + "values(?,?)");
pstmt.setString(1, name);
fis=new FileInputStream(image);
pstmt.setBinaryStream(2, (InputStream) fis, (int) (image.length()));
count = pstmt.executeUpdate();
}
else
{
	pstmt = conn.prepareStatement("update image1 set image = ? where firstname='"+name+"'");

	fis=new FileInputStream(image);
	pstmt.setBinaryStream(1, (InputStream) fis, (int) (image.length()));
	count = pstmt.executeUpdate();
}
if(count>0)
{
	System.out.println("hello ");
System.out.println("insert successfully");
}
else
{
out.println("not successfully");
}
}
catch(Exception ex)
{
ex.printStackTrace();
}
finally{
try{
if(rs!=null){
rs.close();
rs= null;
}
if(pstmt !=null)
{
pstmt.close();
pstmt=null;
}
if(conn!=null)
{
conn.close();
conn=null;
}
}
catch(Exception e)
{
e.printStackTrace();
}
}
response.sendRedirect("Avtar.jsp");
%>
    </body>
</html>