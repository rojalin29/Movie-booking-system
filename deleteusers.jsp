<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
%>

<%@page import="java.sql.*,java.util.*"%>

<%

String uname = request.getParameter("uname");  //get the empid from the from
//String passwd = request.getParameter("password");   //get the password from thr form

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/moviemanagement?characterEncoding=latin1","root","Prashanti@12");
	//here HRMS is the Database , 3306 port no. is used for mySql , root is the user
	
	Statement stmt = con.createStatement();
			
	
	
	int data = stmt.executeUpdate("delete from user where username = '"+uname+"';");
	//out.println(data);  //if it returns 1 then data is successfully inserted; if 0 then data is not successfully inserted
	
	if(data == 1)
	{
		%>
		<h2>User deleted Sucessfully</h2>
		<a href="viewusers.jsp">Admin Page</a>

<% 
		
	}
			
}
catch(Exception e){
	
	out.println(e);
	
}
%>
