<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String username=request.getParameter("username");
	String password=request.getParameter("password");
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/moviemanagement","root","Prashanti@12");
		
		Statement stmt = con.createStatement();
		
		int data = stmt.executeUpdate("insert into user(username,password) values('"+username+"',+'"+password+"')");
	}
catch(Exception e){
	out.println(e);
}
%>
	<div class="form">
            <h2>USER LOGIN</h2>
            <!-- <img src="/images/user.png" alt="user"> -->
            <form action="welcome.jsp">
                <div class="input-filed">

                    <h5>Username:</h5>
                    <input class="input" type="text" placeholder="Enter your id" name="username" required>

                    <h5>Password</h5>
                    <input class="input" type="text" placeholder="Enter your password" name="password" required>

                    <input id="input" type="checkbox"><span>I,agree all terms and conditions.</span>
                </div>

                <button class="loginBtn">LOG IN</button>

            </form>

            
        </div>
	
</body>
</html>