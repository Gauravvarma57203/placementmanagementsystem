<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set New Password</title>
<%@include file="Component/style.jsp"%>
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
<body>

	<div class="container" style="width:50%; height:60%; margin-top: 10%;">
	<div class="card">
		<div class="card-body">

			<form  action="UpdateForgotPasswordServlet" method="post" onclick="return validateForm()">
				<div class="form-group">
					<label >New Password</label> <input
						type="password" class="form-control" name="cpassword"   id="cpassword"
						 placeholder="Create Password">
						<small
						id="passerror" class="form-text text-danger"><!-- enter any thing in it --></small>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Confirm Password</label> <input
						type="password" class="form-control" id="confirmpassword" name="confirmpassword"
						placeholder="Password">
						<small
						id="perror" class="form-text text-danger"><!-- enter any thing in it --></small>
				</div>
				<div class="text-center p-2">
				<button type="submit" class="btn btn-class">Reset</button>
				</div>
				
				
<p class="text-center text-uppercase font-weight-bold"> Don't have an Account ? <a href="register.jsp" style="color: #036564"> Sign up</a></p>
				
			</form>



		</div>

	</div>
	</div>
	
	<!--  
	<script>
	
		
			
			let password = document.getElementById("cpassword");
			let confirmpassword = document.getElementById("confirmpassword")
			
			var pchecker =  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
			var flag = 0;
			var cflag=0;
	
			function validateForm(){
				
				 var pvalidate =password.value.match(pchecker);
				
				
				
				// create password validation  
				
				if(!pvalidate){
					document.getElementById("passerror").innerHTML ="  password must contain 8 to 15 chars and at least one lowercase letter, one uppercase letter, one numeric digit, and one special character";
					flagp =0;
				}else{
					document.getElementById("passerror").innerHTML ="";
					flagp =1;
				}
				
				
				//confirm password
				
				if (password.value == confirmpassword.value) {
					document.getElementById("perror").innerHTML ="";
					cflag==1;
				    } else {
				    	document.getElementById("perror").innerHTML =" password not matched";
				    	cflag= =0;
				    }
				
				
				
				if(flag == 1 && cflag==1){
					return true;
				}else{
					return false;
				}
				
			}
	
	</script>
	-->

</body>
</html>