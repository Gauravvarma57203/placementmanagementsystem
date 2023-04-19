<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="Component/style.jsp" %>
<style>

body{
overflow: hidden;
}


.content{

margin: 3%;
background: #fff;
padding: 4rem ,1rem ,4rem , 1rem;
box-shadow: 0 0 5px 5px rgba(0,0,0,0.25);

}





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

.signin-text{

font-weight: 600!important;
color:#036564;
margin-left: 40%;

}

.form-control{
display: block! important;
width: 90% !important;
font-size: 1rem !important;
font-weight: 400 !important;
line-height: 1.5;
border-color: #00ac96 !important;
border-style: solid !important;
border-width: 0 0 1px 0  !important;
padding: 0px !important;
color:#495052 !important;
height: auto;
border-radius: 2px;
background-color: #fff;
background-clip: padding-box;

}


.form-control:focus {
	color: #495057;
	background-color: #fff;
	border-color: #fff;
	 	outline:0;
	 	box-shadow: none;
	 	
}

form{

margin-top: 50px;
margin-left: 10px;
height:400px;

}

button{
margin-left: 35%;
}

#pid{

margin-left: 230px;
color: #036564;

}

#cross:hover{
	 transform: scale(1.1);
}

#eyeicon{
cursor: pointer;
}

.form-group span i{
position: absolute;
top:264px;
right:80px;
}



</style>
</head>
<body>

<%

response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	
%>


<div class="container ">
<div class="row content">
<!-- login -->
<div class="col-md-6  p-3">

<!-- cross button -->

<a href="index.jsp"><i  id="cross" class="fa-solid fa-circle-xmark" style="font-size: 40px; color: #036564"></i></a>

<form action="LoginServlet" method="Post" onsubmit="return validateForm()">
<h3 class="signin-text mb-3">Sign in</h3>

<%@include file="Component/message.jsp" %>

<div class="form-group">
<label>Email</label>
<input type="email" name="email" class="form-control" id="emailcheck">
<small id="emailerror" class="form-text text-danger" > <!-- Enter some thing --></small>
</div>


<div class="form-group">
<label>Password</label>
<input type="password" name="psk" class="form-control" id="p">
<span><i id="eyeicon" class="fa-solid fa-eye"></i></span>
<small id="passworderror" class="form-text text-danger" > <!-- Enter some thing --></small>
</div>

<a href="forgotpassword.jsp" id="pid" >Forgot Password ?</a><br><br>

<button  type="submit" class="btn btn-class " >Login</button><br><br>

<p class="text-center text-uppercase font-weight-bold"> Don't have an Account ? <a href="register.jsp" style="color: #036564"> Sign up</a></p>

</form>
</div>


<div class="col-md-6 mb-3 ">
<img alt="" src="Images/loginillus.gif">

</div>


</div>
 </div>






   
   
   
  
  <script type="text/javascript">
	
		  let eyeicon = document.getElementById("eyeicon");
			let password = document.getElementById("p");


			eyeicon.onclick = function(){
				if (password.type == "password") {

					password.type="text";
				}else{
					password.type="password";
				}
			}


					let username = document.getElementById("emailcheck");
					let passwords = document.getElementById("p");
					let flag =1;
						
					function validateForm(){
						
	
					if(username.value == ""){
						document.getElementById("emailerror").innerHTML =" Username canot be blanked";
						flag =0;
					}else{
						document.getElementById("emailerror").innerHTML ="";
						flag =1;

					}
						
	
					
					if(passwords.value == ""){
						document.getElementById("passworderror").innerHTML =" password canot be blanked";
						flag =0;

					}else if(passwords.value.length < 8){
						document.getElementById("passworderror").innerHTML =" password require min 6 character ";
						flag =0;

					}
					else{
						document.getElementById("passworderror").innerHTML ="";
						flag =1;

					}
					
					if(flag){
						return true
					}else{
						return false;
					}

						
	
					}
					
			
			
		
			
						

</script>
   

</body>
</html>