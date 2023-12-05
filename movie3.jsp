<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie3</title>
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
   			<iframe width="560" height="315" src="https://www.youtube.com/embed/GP6DRJwGjcE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    	</div>

    <div class="secondBox-2">
    <h1>About the movie</h1>
        Dharani (Nani), Suri (Deekshith Shetty) and Vennela (Keerthy Suresh) are friends since childhood. Their lives are upended for reasons far beyond their control and they will never be the same.
    </div>
    </div>

      <div class="showtimes">
        <h2>Showtimes:</h2>
        <ul>
          <li>Friday, April 29th - 4:00 PM</li>
          <li>Saturday, April 30th - 1:00 PM</li>
          <li>Sunday, May 1st - 8:00 PM</li>
        </ul>
      </div>
      <a href="movie3book.jsp"><input type="button" class="book-now" value="BOOK NOW" onclick="bookNow()" ></button></a>

</body>
</html>