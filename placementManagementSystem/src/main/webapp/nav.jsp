<%@page import="Bean.User"%>


<%
User user1 = (User) session.getAttribute("current-user");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link rel="stylesheet" type="text/css" href="nav.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
<link rel="stylesheet" href="CssAndJavascript/navigationcss.css">

</head>
<body id="body-pd">




	<header class="header" id="header">
		<div class="header_toggle">
			<i class='bx bx-menu' id="header-toggle"></i>
		</div>
		<div class="header_img">
			<img src="https://i.imgur.com/hczKIze.jpg" alt="">
		</div>
	</header>	
	<div class="l-navbar" id="nav-bar">
		<nav class="nav">
			<div>
				<a href="#" class="nav_logo"><span class="nav_logo-name">Welcome
						, <br><%=user1.getName()%></span> </a>

				<div class="nav_list">


					<a href="javascript:showDiv1()" class="nav_link active"> <i
						class='bx bx-grid-alt nav_icon'></i> <span class="nav_name">Dashboard</span>
						
					</a>
					 <a href="javascript:showDiv()" class="nav_link"> <i
						class='bx bx-user nav_icon'></i>Personal detail <span
						class="nav_name"> </span>
					</a>
					
					 <a href="javascript:showDiv2()" class="nav_link"> <i
						class='bx bx-bookmark nav_icon'></i> <span class="nav_name">Change
							Password</span>
					</a>

				</div>
			</div>
			<a href="LogoutServlet" class="nav_link"> <i
				class='bx bx-log-out nav_icon'></i> <span class="nav_name">SignOut</span>
			</a>
		</nav>
	</div>


	<!-- changes -->
	<div id="personaldet" style="display: none; margin-top: 5%">
		<%@include file="personaldetail.jsp"%>

	</div>


	<div id="dashboardblock" style="display: block; border: medium;">
		<%@include file="dashboard.jsp"%>
	</div>

	<div id="changepsk" style="display: block; border: medium;">
		<%@include file="changepassword.jsp"%>
	</div>




	<!-- main container 
    <div class="height-100 bg-light"  id="" >
       
       
       
      
    </div>
    
    -->





	<!--    <div  class="" id="myDiv" style="display:none;">
    
      <h1>
		hello shkfadjshfkajdbkjcsd
		ddsfjbfjdk</h1>
    
    </div>
    
    -->

	<!-- main container -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"> </script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"> </script>
	<script type="text/javascript">
	
	document.addEventListener("DOMContentLoaded", function(event) {
		   
		const showNavbar = (toggleId, navId, bodyId, headerId) =>{
		const toggle = document.getElementById(toggleId),
		nav = document.getElementById(navId),
		bodypd = document.getElementById(bodyId),
		headerpd = document.getElementById(headerId)

		// Validate that all variables exist
		if(toggle && nav && bodypd && headerpd){
		toggle.addEventListener('click', ()=>{
		// show navbar
		nav.classList.toggle('show')
		// change icon
		toggle.classList.toggle('bx-x')
		// add padding to body
		bodypd.classList.toggle('body-pd')
		// add padding to header
		headerpd.classList.toggle('body-pd')
		})
		}
		}

		showNavbar('header-toggle','nav-bar','body-pd','header')

		/*===== LINK ACTIVE =====*/
		const linkColor = document.querySelectorAll('.nav_link')

		function colorLink(){
		if(linkColor){
		linkColor.forEach(l=> l.classList.remove('active'))
		this.classList.add('active')
		}
		}
		linkColor.forEach(l=> l.addEventListener('click', colorLink))

		 // Your code to run since DOM is loaded and ready
		});
	</script>

	<script type="text/javascript">
	
	function showDiv() 
	{
		 document.getElementById("personaldet").style.display="block";
		document.getElementById("dashboardblock").style.display="none";
		document.getElementById("changepsk").style.display="none";
	   
	    
	  }
	function showDiv1() 
	{
		
		document.getElementById("dashboardblock").style.display="block";
	    document.getElementById("personaldet").style.display="none";
	    document.getElementById("changepsk").style.display="none";
	    
	    
	  }

	function showDiv2() 
	{
		
		document.getElementById("changepsk").style.display="block";
	    document.getElementById("personaldet").style.display="none";
	    document.getElementById("dashboardblock").style.display="none";
	    
	  }

	
	
	
	
	</script>
</body>
</html>