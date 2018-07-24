<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    String numStr =request.getParameter("databasename");
    System.out.print(numStr);
    
    session.setAttribute("current_db", numStr);
    
    %>