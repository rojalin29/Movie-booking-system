 <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>User List</title>
</head>
<body>
	<h1>Users List</h1>
	
	<table border="1">
		<tr>
			<th>Username</th>
			<th>Password</th>
			
		
		</tr>
		<% 
		Connection conn = null;
	    PreparedStatement stmt = null;
	    ResultSet rs = null;

	    try {
	        // Establish database connection
	        Class.forName("com.mysql.jdbc.Driver");
	        conn = DriverManager.getConnection("jdbc:mysql://localhost/moviemanagement?characterEncoding=latin1", "root", "Prashanti@12");

	        // Prepare statement to query the database
	        String query = "SELECT * FROM user";
	        stmt = conn.prepareStatement(query);
	         // Execute the query and get the result set
	        rs = stmt.executeQuery();
	       while(rs.next()){

		%>
		<tr>
			<td><%= rs.getString(1) %></td>
			<td><%= rs.getString(2) %></td>
			
			
		</tr>
		<%
			}
	    }
	       catch(Exception ee){
	    	   ee.printStackTrace();
	       }
	    finally{
	    	rs.close();
	       stmt.close();
	       conn.close();
	    }
		%>
	</table>