<%@page import="Bean.User"%>
<%
		User user=(User)session.getAttribute("current-user");

		if(user==null){
			session.setAttribute("message", "You are not Logged in ! Login First");
			response.sendRedirect("adminlogin.jsp");
			return;
		}

		else{
			if(user.getIstype().equalsIgnoreCase("student")){

				
				session.setAttribute("message", "you are not admin !do not access it");
				session.removeAttribute("current-user");
				response.sendRedirect("adminlogin.jsp");
				return;
			}
		}


%>













<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@include  file="Component/navbar.jsp" %>


<%

		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");


%>



<div style="margin-top:3%;">
<%@include file="admindashboarddata.jsp" %>

<%@include file="getAllStudent.jsp" %>
</div>









</body>
</html>