<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="Component/style.jsp" %>

<style type="text/css">

*{
padding:auto;
margin:auto;
text-align:center;
}

.bg-img.background{

filter:blur(5px);
}

body{


background-image: url("Images/img3.jpg");
background-repeat: no-repeat;
background-size:cover; 
backdrop-filter: blur(10px);
height: 100vh;
width: 100%;	
overflow:hidden;
align-items: center;

}

.container-sm{

max-width: 100%;
width:596px;
display:flex;



}
#homei
{

 border-radius:50%; 

}



#homei:hover
{

box-shadow: 2px 2px inset;
 transform: scale(1.1);

}
#cen{

position: relative;
top: 170px;


}

.card{

box-shadow: 1px 1px;


}



.nav{
position: relative;
top: 120px;

}

.nav h3{
position:relative;


font-size: 40px;

margin-left:32%;
color: white;
text-shadow: 2px 1px blue;
}

</style>
</head>
<body>


<div class="nav">

<h3> Online Placement Portal</h3>


</div>
 
 
 
 
 
 
 
 <section id="cen">
 
	<div class="container-sm" style="align-items: center;">
	
	<div class="row ">
	
	<div  id="homei" class="card p-4 ml-5">
	
	<a href="adminlogin.jsp"><img   src="Images/admin.png" height="150px" width="150px"></a>
	</div>
	
	<div id="homei" class="card p-4 ml-5">
	
	<a href="Login.jsp"><img  alt="" src="Images/userhome.png" height="150px" width="160px"></a>
	</div>
	
	
	</div>
	
	</div>
	</section>
		

</body>
</html>