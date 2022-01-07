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
String un=request.getParameter("t1");
String pass=request.getParameter("t2");


try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/edubridge","root","root");
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("SELECT * FROM industryreg");
	String lavanya="";
	while(rs.next()){
		if(un.equals(rs.getString(1)))
		{
			lavanya="yes";
			break;
		}
		}
	if(lavanya.equals("yes")){
		response.sendRedirect("welcome.jsp");
	}
	else{
		response.sendRedirect("login.html");
	}
}
catch(Exception e){
	
}
%>

</body>
</html>