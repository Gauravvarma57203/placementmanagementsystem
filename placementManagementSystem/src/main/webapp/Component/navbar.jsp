<!-- admin nav bar -->

<%@include file="style.jsp" %>

<head>
<style>

.custom-bg{
	background-color: #036564!important;
}

</style>
</head>


<%

		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");


%>



<div class="container-fluid">



<nav class="navbar navbar-expand-lg navbar-dark bg-dark custom-bg">
  <a class="navbar-brand" href="#">Palcement Portal</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse custom-bg" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="admindashboard.jsp">Dashboard<span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Add Drives
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="AddCompany.jsp">Add Company</a>
          <a class="dropdown-item" href="showcommpany.jsp">View Company</a>
        </div>
      </li>
      
      
            <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Add Recruitment 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="RecuritStudent.jsp">Recruit Student</a>
          <a class="dropdown-item" href="EligibleStudent.jsp">Eligible Student</a>
          <div class="dropdown-divider"></div> 
          <a class="dropdown-item" href="#">Selected Student</a>
        </div>
      </li>
      
      
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			Consolited Sheet
				        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="CompanywiseSheet.jsp">Company Consolited Sheet</a>
          <a class="dropdown-item" href="#">Student Consolited Sheet</a>
        </div>
      </li>
      
      
            
      
      
      
      
      
      
      
      <li class="nav-item">
        <a class="nav-link" href="Placementstatistics.jsp">Placement Statatics</a>
      </li>
      
      
       </ul>
      </div>
      
      
      <a href="LogoutServlet" class="btn btn-primary">Logout</a> 
</nav>

</div>