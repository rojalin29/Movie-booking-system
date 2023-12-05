<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
String username=request.getParameter("username");
String pass=request.getParameter("pass");
if(username=="admin" && pass=="123456"){
	out.print("fuk u vishal");
}
else{
	
	response.sendRedirect("adminpage.jsp");
}
%>


