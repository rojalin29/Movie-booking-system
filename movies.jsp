<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movies</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>BookYourShow</h1>
    </header>
    <nav>
        <ul>
            <li><a href="homepage.jsp">Home</a></li>
            <li><a href="about.html">About Us</a></li>
            <li><a href="#">Movies</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
        </ul>
    </nav>
    <main>
        <h2>Currently Running</h2>
        <p>Find the latest movies, showtimes, and book your tickets online.</p>
        <a href="movie1.jsp"><img src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:oi-discovery-catalog@@icons@@star-icon-202203010609.png,ox-24,oy-615,ow-29:ote-OS8xMCAgNTYuOEsgdm90ZXM%3D,ots-29,otc-FFFFFF,oy-612,ox-70:q-80/et00311714-cyhgpavbnu-portrait.jpg" alt="" height="25%" width="10%"></a>
        <a href="movie2.jsp"><img src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:oi-discovery-catalog@@icons@@star-icon-202203010609.png,ox-24,oy-615,ow-29:ote-Ny42LzEwICA0OC41SyB2b3Rlcw%3D%3D,ots-29,otc-FFFFFF,oy-612,ox-70:q-80/et00326977-scnvhurlwr-portrait.jpg" alt="" height="25%" width="10%"></a>
        <a href="movie3.jsp"><img src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:oi-discovery-catalog@@icons@@star-icon-202203010609.png,ox-24,oy-615,ow-29:ote-OC41LzEwICA3OC43SyB2b3Rlcw%3D%3D,ots-29,otc-FFFFFF,oy-612,ox-70:q-80/et00316318-cbqgnnfmnf-portrait.jpg" alt="" height="25%" width="10%"></a>
    </main>
    <footer style="position:relative; bottom:-100px;">
        <p>&copy; <%=new java.util.Date().getYear() + 1900%> Movie Ticket Booking System. All rights reserved.</p>
    </footer>
</body>
</html>
