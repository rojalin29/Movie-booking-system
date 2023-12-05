<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>
</head>
<body>
	
	
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        // Establish database connection
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost/moviemanagement?characterEncoding=latin1", "root", "Prashanti@12");

        // Prepare statement to query the database
        String query = "SELECT * FROM user WHERE username = ? AND password = ?";
        stmt = conn.prepareStatement(query);
        stmt.setString(1, username);
        stmt.setString(2, password);

        // Execute the query and get the result set
        rs = stmt.executeQuery();

        // Check if the user exists
        if (rs.next()) {
            // If the user exists, set the session variable and redirect to the home page
            session.setAttribute("username", username);
            session.setAttribute("Password", password);
            response.sendRedirect("loginsuccess.html");
        } else {
            // If the user doesn't exist, show an error message
            out.println("<p>Invalid username or password. Please try again.</p>");
        }
    } catch (Exception e) {
        out.println("<p>Error: " + e.getMessage() + "</p>");
    } finally {
        // Close the database connection and statement
        if (rs != null) rs.close();
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>
	
</body>
</html>