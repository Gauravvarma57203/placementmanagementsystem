<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Page</title>
<%@include file="Component/style.jsp"%>
<style type="text/css">
.cointainer-fluid {
	
}

.card {
	position: absolute;
	top: 70px;
	width: 60%;
	box-shadow: 0 0 1px 1px rgba(0.1,0.1,0.1,0.1);
}

.signin-text{

font-weight: 600!important;
font-size:19px;
color:#036564;
margin-left: 40%;

}
form img{

height: 90px;
widows: 90px;
border-radius: 50%;



position: absolute;
left:37%;
top:-50px;

box-shadow: 0 0 5px 5px rgba(0.1,0.1,0.1,0.1);

}

.form-control{
display: block! important;
width: 100% !important;
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


.form-control:focus {
	color: #495057;
	background-color: #fff;
	border-color: #fff;
	 	outline:0;
	 	box-shadow: none;
	 	
}	

span i{
position: absolute;
top: 198px;
right: 28px;
color: #a3a3a3;
cursor: pointer;
}

.cross{

	font-size: 35px; 
	color:#036564;
	
	
	
}

.cross:hover{
	 transform: scale(1.1);
}


</style>

</head>


<body>





	<div class="cointainer-fluid">

		<div class="row">
			<div class="col-md-6 offset-md-4">
			<%@include file="Component/message.jsp" %>

				<div class="card">
				
				<a href="index.jsp"><i class="fa-solid fa-circle-xmark  cross" ></i></a>

					<div class="card-body">
						
						<form action="AdminLoginServlet"  method="post" onsubmit="return validate()">
						
							<img class="text-center" src="Images/admin.png" ></img>
							<br>
							<p class="signin-text">Sign in</p>
						
						<div class="form-group">
								<label>Email</label> 
								<i class="fa-solid fa-envelope" style="color:#a5a5a5"></i><input type="email" class="form-control" 
								name="email" id="adminemail" placeholder="Enter Email"> 
								<small id="error" class="form-text text-danger"><!-- errod validaion --></small>
							</div>
							
							
							<div class="form-group">
								<label >Password</label>
								<i class="fa-solid fa-key" style="color:#a5a5a5"></i> <input type="password" class="form-control" id="adminpassword" name="passcode" placeholder="Enter password">
								<span><i id="icon" class="fa-solid fa-eye"></i></span>
								

								<small id="perror" class="form-text text-danger text"><!-- errod validaion --></small>
								
							</div>
						
					
							<div class="form-group text-center">
							<button type="submit" class="btn btn-class">Log in</button>
								</div>
								
								<p class="text-center text-uppercase font-weight-bold"> <a href="forgotpassword.jsp" style="color: #036564">Forgot Password ?</a></p>
						</form>

					</div>
				</div>
			</div>
		</div>
		</div>
		
		
		<script type="text/javascript">
		
		 let adminemail = document.getElementById("adminemail");
		 let password = document.getElementById("adminpassword");
		 let icon = document.getElementById("icon");
		 
		 
		 icon.onclick =function(){
			 if(password.type == "password"){
				 password.type ="text";
			 }else{
				 password.type = "password";
			 }
		 }
		 
		
		 let flag=0;
		 let flags=0;
		 
		 function validate(){
			 

				if(adminemail.value == ""){
					document.getElementById("error").innerHTML =" Email canot be blanked";
					flag =0;
				}else if(!validateEmail(adminemail.value)){
					document.getElementById("error").innerHTML =" ! Invalid Email, Provide proper format";
					flag =0;
				
		 }else{
					document.getElementById("error").innerHTML ="";
					flag =1;

				}
					

				
				if(password.value == ""){
					document.getElementById("perror").innerHTML =" password canot be blanked";
					flags =0;

				}else if(password.value.length < 8){
					document.getElementById("perror").innerHTML =" password require min 8 character ";
					flags =0;

				}
				else{
					document.getElementById("perror").innerHTML ="";
					flags =1;

				}
				
				if(flag ==1 && flags==1){
					return true
				}else{
					return false;
				}

			 
			 
		 }
		 
		 function validateEmail(email) {
		        let res = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		        return res.test(email);
		      }
		
		</script>

</body>
</html>