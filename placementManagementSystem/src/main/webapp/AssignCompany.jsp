<%@page import="java.util.ListIterator"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Bean.Company"%>
<%@page import="Bean.Students"%>
<%@page import="Dao.CompanyDao"%>
<%@page import="Dao.StudentDataDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<%@include file="Component/style.jsp"%>
</head>
<body>

		<%
				
		        
				Students student;
				Company company;
				StudentDataDao studentdao = new StudentDataDao();
				CompanyDao companydao = new CompanyDao();
				
				
			
	
				
			
				
				List<Company> companydata = companydao.getAllCompany();
				
		%>
		
		<%
					
						
						 int stuid = Integer.parseInt(request.getParameter("id"));
						out.print(stuid);
					
		
		%>
		
		





<div class="container mt-3">

<div class="row">
<div class="col-md-6 offset-md-3">
	<div class="card">
	<form action="OperationalServlet" method="get">
			<h3 class="mb-3 text-center">All compinies</h3>
			
			
			<ul class="list-group">
			
			<%  
					for(Company c : companydata){
			%>
			
			
			<li class="list-group-item">
			<input type="checkbox" name="<%= c.getCompanyname() %>" value="<%= c.getId() %>"><%= c.getCompanyname() %> 
			
			</li>
			
			<%
			}
			%>
			
		
			
			
			
			
		</ul>
		
		<input type="hidden" name="studentid"  value="<%= stuid %>" > 
			<button type="submit" name="addsub" class="btn btn-info" value="Add">Add Company to student	</button>
	
	
	
	
	
	
	</form>
	
	</div>



</div>


</div>






</div>




	
	



</body>
</html>