<%@include file="Component/style.jsp" %>
<%@page import="Bean.User"%>
<%

User user=(User)session.getAttribute("current-user");

if(user==null){
	session.setAttribute("message", "You are not Logged in ! Login First");
	response.sendRedirect("Login.jsp");
	return;
}

else{
	if(user.getIstype().equalsIgnoreCase("admin")){

		
		session.setAttribute("mess", "you are not Student !do not access it");
		session.removeAttribute("current-user");
		response.sendRedirect("Login.jsp");
		return;
	}
}


response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");


%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>StudentDashboard</title>
</head>
<body>
	
	
	<%@include file="nav.jsp" %>

	
</body>
</html>