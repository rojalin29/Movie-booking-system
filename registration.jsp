<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup Page</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="style1.css">
<link rel="stylesheet" href="signup.css">
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
	<h1 style="text-align:center">Sign Up</h1>
    <form action="registrationprocess.jsp" method="post">
        <label for="username">Username:</label>
        <input type="text" name="username" required><br><br>
        <label for="password">Password:</label>
        <input type="password" name="password" required><br><br>
        <label for="email">Email:</label>
        <input type="email" name="email" required><br><br>
        <input type="submit" value="Signup">
    </form>
</body>
</html>