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
String cname=request.getParameter("t2");
String add=request.getParameter("t3");
String country=request.getParameter("t4");
String np=request.getParameter("t5");
session.setAttribute("un",un);
session.setAttribute("np",np);


try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/edubridge","root","root");
	Statement stmt=con.createStatement();
	System.out.println("1");
	String sql="SELECT*FROM industryreg where username="+un+"";
	System.out.println("2");
	ResultSet rs=stmt.executeQuery(sql);
	String lavanya="";
	while(rs.next()){
		if(cname.equals(rs.getString(3))&& add.equals(rs.getString("address")))
		{
			lavanya="yes";
			break;
		}
		}
	if(lavanya.equals("yes")){
		response.sendRedirect("changepass.jsp");
	}
	else{
		response.sendRedirect("forget.html");
	}
}
catch(Exception e){
	
}
	%>

</body>
</html>