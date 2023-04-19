<%@include file="Component/stylenav.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

		
		<div class="wrapper">
		
			<nav id="sidebar">
			
				<div class="sidebar-header">
						<h3>SideBar Header</h3>
				</div>
				
				<ul class="list-unstyled components">
					<p>Code4Eduction</p>
					
					
					<li>
							<a href="#homesubmenu" data-toggle="collapse" aria-expanded="false"
							class="dropdown-toggle"> HOME</a>
							
							<ul class="collapse list-unstyled" id="homesubmenu">
							
								<li>
									<a href="#">home1</a>
								</li>

								<li>
									<a href="#">home2</a>	
								</li>
								
								<li>
									<a href="#">home3</a>
								</li>
																
							</ul>
					</li>
					
					<li>
							<a href="#about">About</a>
					
					</li>
					
					<li>
					
						<a href="#pagesubmenu" data-toggle="collapse" aria-expanded="false"
						class="dropdown-toggle">Page</a>
						<ul class="collapse list-unstyled" id="pagesubmenu">
						
								<li>
									<a href="#">Page1</a>
								</li>
								
								<li>
									<a href="#">Page2</a>
								</li>
								
								<li>
									<a href="#">Page3</a>
								</li>
								
								
						
						</ul>
					
					
					</li>
					
					<li>
							<a href="#about">Service</a>
					 </li>

					<li>
							<a href="#about">Contact us</a>
					 </li>	
				
				 </ul>
				 
				 <ul class="list-unstyled CTAs">
				 
				 <li>
							<a href="#" class="download"> Subscribe</a>
					 </li>
				 
				 </ul>
			
			
			
			
			
			</nav>
			
			<!-- side nav over -->
		
			
			<div class="content">
				<nav class="navbar navbar-expand-lg navbar-light bg-light">
				
					<button type="button" id="sidebarCollapse" class="btn btn-info">
						<i class="fa fa-align-justify"></i><span>toggle-slider</span>
					</button>
					
					
					<!-- for phone -->
					
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    
    				<span class="navbar-toggler-icon"></span>
  					</button>
  					
  					
  					<div class="collapse navbar-collapse" id="navbarNav">
    				<ul class="navbar-nav ml-auto">
    						<li class="nav-item active">
    						<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
     				 	</li>
     				 	
     				 	 <li class="nav-item">
       						 <a class="nav-link" href="#">FEATURES</a>
    					  </li>
     				 	
     				 	 <li class="nav-item">
       						 <a class="nav-link" href="#">pRICING</a>
    					  </li>
    					  
    					  <li class="nav-item">
      							  <a class="nav-link disabled" href="#">Disabled</a>
      						</li>
      						
      						</ul>
      						</div>
    					  
     				 	
    				

			
			</nav>
			<!-- navbar -->
			
			
			
			<div class="content-wrapper">
				<h2>Collaspse sidebar uisng bootstrap]</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
				 sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
				 sunt in culpa qui officia deserunt mollit anim id est laborum.</p>


				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
				 sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
				 sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
								
			</div>
			
			<div class="line"></div>
			
		
		
		</div>
		</div>




<script>

			/* $(document).ready(function(){
				$("#sidebarCollapse").on('click',functon(){
					$("#sidebar").toggleClass('active');
				});
			}) */
			var sidebar = document.getElementById("sidebar");
			var sidebarCollapseBtn = document.getElementById("sidebarCollapse");
			sidebarCollapseBtn.addEventListener("click", () => {
				sidebar.classList.toggle("active");
			});

</script>

</body>
</html>