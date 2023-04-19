<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="Component/style.jsp"%>
<style type="text/css">


.btn-class{
    border-color: #036564 !important;
    color: #036564!important;
    width: 155px!important;
    padding-right:2px;
    	
  
    
    align-items: center;
}
.btn-class:hover{
    background-color:  #036564!important;
    color: #fff!important;
}

</style>
</head>
<body>



	<div class="container">
		<div class="row justify-content-center">

			<div class="col-lg-10 col-md-10 mt-5">

				<!-- instrudtion to change password -->

				<div class="card mb-3">
					<div class="card-body">
						<h2>Forgot your password ?</h2>
						<p>Change your password in three easy steps. This will help
							will help you to secure your password!</p>
						<ol class="list-unstyled">
							<li><span class="text-primary text-medium">1. </span> Enter
								your email address below</li>
							<li><span class="text-primary text-medium">2. </span> Our
								System will send you an OTP to your mail</li>
							<li><span class="text-primary text-medium">3. </span> Enter
								the OTP on next Page</li>
							<li><span class="text-primary text-medium">4. </span> Enter
								your new password, then select Change Password
						</ol>

					</div>
				</div>


				<!-- form to to set email  for changing password -->

				<div class="card">
					<div class="card-body">

						<form action="ForgotPasswordServlet" method="post">
							<div class="form-group">
								<label>Enter your email address</label> 
								<input type="email"  class="form-control" id="forgotemail" name="femails" placeholder="Enter email">
								<small id="femail" class="form-text text-info">Enter the
									Registered Email Address. Then we we'll email an OTP this
									address </small>
							</div>
							
							<div class="text-center">
							<button type="submit" class="btn btn-class">Get New Password</button>
							<a href="index.jsp" class="btn btn-outline-danger ">Back To Home </a>
						</div>

						</form>

					</div>
					
				</div>




			</div>
		</div>

	</div>


</body>
</html>

<!--  -->