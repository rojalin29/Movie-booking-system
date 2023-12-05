<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie2</title>
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
    <div class= "second-box">
   		<div class="secondBox-1">
   			<iframe width="560" height="315" src="https://www.youtube.com/embed/K-EMszLvRIQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    		
    	</div>

    <div class="secondBox-2">
    <h1>About the movie</h1>
        Bholaa, a prisoner, is finally going home after 10 years of imprisonment to meet his young daughter. His journey gets difficult when he is arrested mid-way. At first, he is not aware of the grave situation he has got himself into but after a crazy incident takes place, he must travel a pathway full of crazy obstacles with death lurking around every corner. Will he get to meet his daughter?
    </div>
    </div>

      <div class="showtimes">
        <h2>Showtimes:</h2>
        <ul>
          <li>Friday, April 29th - 6:00 PM</li>
          <li>Saturday, April 30th - 12:00 PM</li>
          <li>Sunday, May 1st - 5:00 PM</li>
        </ul>
      </div>
      <a href="movie2book.jsp"><input type="button" class="book-now" value="BOOK NOW" onclick="bookNow()" ></button></a>

</body>
</html>