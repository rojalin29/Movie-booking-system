<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

		<%
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/moviemanagement?characterEncoding=latin1","root","Prashanti@12");
			//here HRMS is the Database , 3306 port no. is used for mySql , root is the user
			
			Statement stmt = con.createStatement();
					
			
			
			int data = stmt.executeUpdate("update user set password='"+password+"' where username = '"+username+"';");
			//out.println(data);  //if it returns 1 then data is successfully inserted; if 0 then data is not successfully inserted
			
			if(data == 1)
			{
				response.sendRedirect("login.jsp");
			}
			
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
		%>