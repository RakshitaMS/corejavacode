<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="java.sql.*" %>
<body>
<%
String un=session.getAttribute(un).toString();
String np=session.getAttribute(np).toString();

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/edubridge","root","root");
	Statement stmt=con.createStatement();
	String query="UPDATE `edubridge`.`industryreg` SET 'password'='"+np+"' WHERE ('username'='"+un+"');"; 
    stmt.executeUpdate(query);
    response.sendRedirect("loginadmin.html");
}
catch(Exception e){
	
}
%>
</body>
</html>