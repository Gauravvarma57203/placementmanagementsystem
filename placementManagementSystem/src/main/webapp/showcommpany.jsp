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

		
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

		
%>



<%@page import="Bean.Company"%>
<%@page import="java.util.List"%>
<%@page import="Dao.CompanyDao"%>
<%@include file="Component/style.jsp" %>

<%@include file="Component/navbar.jsp" %>

<head>

<title></title>
<style type="text/css">



.btn-class{
    border-color: #036564 !important;
    color: #036564!important;
    width: 120px!important;
  
    
    align-items: center;
}
.btn-class:hover{
    background-color:  #036564!important;
    color: #fff!important;
}




</style>

</head>

<%

	CompanyDao companydao = new CompanyDao();
	
	List<Company> companylist = companydao.getAllCompany();



%>


<table class="table mt-5">
  <thead class="thead-light">
    <tr>
      <th scope="col">id</th>
      <th scope="col">Company Name</th>
      <th scope="col">Job Profile</th>
      <th scope="col">Salary Package</th>
      <th scope="col">Location</th>
      <th scope="col">Description</th>
      <th scope="col" colspan="2">Operation</th>
      
      
    </tr>
  </thead>
  <tbody>
  
  	<%
  			for(Company c : companylist){
  	
  	%>
  
    <tr>
      <th scope="row"><%= c.getId() %></th>
      <td><%= c.getCompanyname() %></td>
      <td><%= c.getJobprofile() %></td>
      <td><%= c.getSalarypackage() %></td>
      <td><%= c.getLocation() %></td>
      <td><%= c.getDescription() %></td>
      <td><a href="updateCompany.jsp?id=<%= c.getId()%>" class="btn btn-class">Update</a></td>
      
  		<td> <a  href="updateCompanyServlet?id=<%= c.getId()%>" class="btn btn-outline-danger" id="delete-button"> Delete</a></td>
      
    </tr>
    
    <%
    
  			}
    
    %>
  </tbody>
</table>