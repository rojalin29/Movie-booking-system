<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="style1.css">
</head>
<body>
<header>
          <h1>BookYourShow</h1>
      </header>
      <nav>
          <ul>
        		<li><a href="homepage.jsp">Home</a></li>
        		<li><a href="about.html">About Us</a></li>
        		<li><a href="movies.jsp">Movies</a></li>
       			<li><a href="login.jsp">Login</a></li>
        		<li><a href="contact.jsp">Contact Us</a></li>
      
          </ul>
      </nav>
<%
    String errorMessage = (String) request.getAttribute("errorMessage");
%>

    <h2 style="text-align:center">Login</h2>
    <form action="loginprocess.jsp" method="post">
        <label>Username:</label>
        <input type="text" name="username"><br>
        <label>Password:</label>
        <input type="password" name="password"><br>
        <input type="submit" value="Login">
    </form>
    <h3 style="text-align:center">Forgot Password?</h3>
     <a href="forgetpass.html" style="display:flex;justify-content:center"> Click here</a>
    
    <h3 style="text-align:center">New User?</h3>
     <a href="registration.jsp" style="display:flex;justify-content:center"> Click here</a>
     <h3 style="text-align:center">Admin Login</h3>
     <a href="adminlogin.html" style="display:flex;justify-content:center"> Click here</a>
    <div>
    <footer style="position:relative;bottom:-10px">
        <p>&copy; 2023 Movie Ticket Booking System. All rights reserved.</p>
    
    </footer>
    </div>  
</body>
</html>