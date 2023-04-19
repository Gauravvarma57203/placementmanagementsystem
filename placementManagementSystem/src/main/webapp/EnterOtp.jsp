<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@include file="Component/style.jsp"%>
<style type="text/css">
.btn-class {
	border-color: #036564 !important;
	color: #036564 !important;
	width: 160px !important;
	padding-right: 2px;
	align-items: center;
}

.btn-class:hover {
	background-color: #036564 !important;
	color: #fff !important;
}

.container {
	margin-top: 6%;
}

#hovatag:hover{
	
	color:white;

}
</style>
</head>
<body>

	<div class="container text-center">
	
		
		<div class="row ">
			<div class="col-md-4 offset-md-4">


				<div class="card ">
				<%@include file="Component/message.jsp" %>
					<div class="card-body">
					
						<span style="font-size: 560%; margin-top: 0px;"> <i
							class="fa-solid fa-lock"></i>
						</span>



						<h2 class="text-center pt-2">Enter OTP</h2>

						<form  action="ValidateOtpServlet" method="post" autocomplete="off">
							<div class="form-row align-items-center">

								<div class="col-auto" style="margin-left: 50px;">

									<div class="input-group mb-2 ">
										<div class="input-group-prepend">
											<div class="input-group-text">
												<i class="fa-solid fa-key"></i>
											</div>
										</div>
										<input type="text" class="form-control "
											 placeholder="Enter OTP" name="emailotp" required="required">
									</div>
								</div>

								<div class="col-auto" style="margin-left: 90px;">
									<button type="submit" class="btn btn-class mb-2 text-center">Reset Password</button>
									<br>
									<h3>OR</h3>
									<a class="btn btn-outline-danger"  id="hovatag" href="forgotpassword.jsp" role="button">Change Email</a>
								</div>
								
								
								
								
								<input type="hidden" class="hide" name="token" id="token" value="">
							</div>
						</form>


					</div>
				</div>


			</div>


		</div>


	</div>

</body>
</html>