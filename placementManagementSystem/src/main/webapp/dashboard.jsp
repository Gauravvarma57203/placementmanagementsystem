<%@page import="Bean.Company"%>
<%@page import="java.util.List"%>
<%@page import="Dao.CompanyDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<%@include file="Component/style.jsp"%>



<style type="text/css">

.card{
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);	
	width: 100%;
	height: 40%;
	border-radius: 12px;

	left: 1%;
	
}

.card-header{
	width: 100%;
	height: 30%;
	border-bottom-left-radius:27%;
	border-bottom-right-radius:27%;
	
	background-color: #009879;

}

.head{
display: flex;

}


</style>

</head>
<body>


<%
	CompanyDao companydao = new CompanyDao();
	
	List<Company> companylist = companydao.getAllCompany();
%>


<div class="container-fluid"  style="margin-top: 7%;">
	
<%
			for(Company c : companylist){
	%>

	<div class="card mb-4">
	<div class="card-header" style="background-color: #009879">
	<img src="Images/alerticon.png" height="30px" width="30px"  style="margin-top: -12px; border-radius: 27px;">
	
	<span style="color: white; ; font-size: 18px; margin-left: 10%; font-family: new english roman;"><b>Company Name</b></span>
	
	<span style="color: white; ; font-size: 18px; margin-left: 10%; font-family: new english roman;"><b><%= c.getCompanyname() %></b></span>	
	
	</div>
	
	<div class="card-body">
	
	
	<div class="row">
		
		<div class="col-sm-4">
      <input type="text" class="form-control" placeholder="" value="JobProfile : <%= c.getJobprofile() %>" readonly="readonly">
		 </div>
			 
		
		
		<div class="col-sm-4">
      <input type="text" class="form-control" placeholder="" value="Location : <%= c.getLocation() %>" readonly="readonly">
		 </div>
		 
		
		 
		 <div class="col-sm-4">
      <input type="text" class="form-control" placeholder="" value="Package : <%= c.getSalarypackage() %>" readonly="readonly">
		 </div>
	
	
	
	</div>
	
	
	<div class="form-group mt-2">
							<label>Description</label>
							<textarea class="form-control" style="height: 60px" name="desc" readonly="readonly"><%= c.getDescription() %></textarea>

						</div>
		
	
	</div>
	</div>
	
	<% 
	}
	%>


</div>





			
</body>
</html>