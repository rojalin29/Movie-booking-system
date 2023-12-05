<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Process</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/moviemanagement","root","Prashanti@12");
		
		Statement stmt = con.createStatement();
		
		int data = stmt.executeUpdate("insert into user(username,password) values('"+username+"',+'"+password+"')");
		if(data==1){
			response.sendRedirect("homepage.jsp");
		}
	}
	catch(Exception e){
		out.println(e);
	}
%>
</body>
</html>