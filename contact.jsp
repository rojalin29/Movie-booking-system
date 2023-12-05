
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
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
          <li><a href="#">Contact Us</a></li>
        </ul>
    </nav>
    <form>
        <h1>Contact Us</h1>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <label for="phone">Phone:</label>
        <input type="tel" id="phone" name="phone" required>
        <label for="message">Message:</label>
        <textarea id="message" name="message" rows="5" required></textarea>
        <input type="submit" value="Send">
    </form>
    <div>
    <footer style="position:relative;bottom:-5px">
        <p>&copy; 2023 Movie Ticket Booking System. All rights reserved.</p>
    
    </footer>
    </div>  
</body>
</html>