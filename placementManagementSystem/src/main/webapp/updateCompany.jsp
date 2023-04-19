<%@page import="Bean.Company"%>
<%@page import="Dao.CompanyDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Post job Page</title>
<%@include file="Component/style.jsp"%>
<style>

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
<body style="background-color: f0f0f0">


<%

		int companyid = Integer.parseInt(request.getParameter("id"));
 

			CompanyDao companydao = new CompanyDao();
		 Company company=	companydao.getCompanyById(companyid);
%>
<%= companyid %>

	<%@include file="Component/navbar.jsp"%>

	<div class="container p-2">
		<div class="col-md-10 offset-">

			<div class="card">
				<div class="card-body">

					<div class="text-center text-success">


						<img alt="" src="Images/job-search.png" height="90px" width="90px">
						<h5 style="color: #036564">Update Company</h5>
					</div>



					<form action="updateCompanyServlet" method="post">

<div class="row">
						<div class="form-group col-md-6">
							<label for="titlse">Comapany Name</label> <input type="text"
								class="form-control" id="titlse" aria-describedby="emailHelp"
								value="<%= company.getCompanyname() %>" name="company">
						</div>


						<div class="form-group col-md-6">
							<label for="exampleFormControlSelect1" style="font-size: 16px;">Select
								Type</label>
								 <select data-placeholder="Choose a Type"
								name="choosedcompany" value="<%= company.getType() %>" class="ch  form-control"
								style="width: 100%;">
								
								<option>Choose Type</option>
								
								<option>Campus(Virtual)</option>

								<option>Campus(Offline)</option>
							</select>
						</div>
</div>


						<div class="form-row">
							<div class=" form-group col-md-4">

								<label>Location</label> <input type="text" class="form-control"
									placeholder="Enter location" value="<%= company.getLocation() %>" name="location">
							</div>

							<div class=" form-group col-md-4">

								<label>Package</label> <input type="text" class="form-control"
									placeholder="Enter Package" value="<%= company.getSalarypackage() %>" name="packagess">
							</div>




							<!--  								<div class=" form-group col-md-4">
								
								<label>status</label>
								<select class="form-control" name="status">
								<option class="Active" value="Active">Active</option>
								<option class="Inactive" value="Inactive">Inactive</option>
																
								</select>
								</div>
								-->


							<div class=" form-group col-md-4">

								<label>Job Profile</label> <input type="text"
									class="form-control" value="<%= company.getJobprofile() %>" placeholder="Enter Job profile"
									name="jobprofile">
							</div>
							
							
							
							
							<label>Add File</label>
							<div class="input-group mb-2" >
								<div class="custom-file">
									<input type="file" class="custom-file-input"
										id="inputGroupFile04"> <label
										class="custom-file-label" for="inputGroupFile04">Choose
										file</label>
								</div>
								<div class="input-group-append">
									<button class="btn btn-outline-secondary" type="button">Upload</button>
								</div>
							</div>
							
							
							
							


						</div>


						<div class="form-group">
							<label> Enter Description</label>
							<textarea class="form-control" style="height: 150px"  value="<%= company.getDescription() %>" name="desc"></textarea>

						</div>
						
						<input type="hidden" value="<%= companyid %>" name="ids">

						<div class="text-center">
							<button type="submit" class="btn btn-class">Update
								</button>
						</div>








					</form>


				</div>

			</div>
		</div>

	</div>



</body>
</html>

























