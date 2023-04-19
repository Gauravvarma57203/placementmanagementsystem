<%@page import="Bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Personal Details</title>


<%@include file="Component/style.jsp"%>
<style type="text/css">

.head{

display:flex;

}

</style>
</head>
<body>




<%


User user2=(User)session.getAttribute("current-user");


%>



	<div class="container mt-4">
		<div class="row">
			<div class="col-md-12">
				<div class="card" style="height:100% ">
					<div class="card-body" >
						<form action="AddStudentServlet" method="post">

<!-- AddStudentServlet-->
							<div class="form-row">
								<div class="col-md-6 mb-2">
									<label>Full Name</label> <input type="text"
										class="form-control" name="sname" id="fullname" placeholder="First name"
										value="<%= user2.getName() %>" readonly>
								</div>
								<div class="col-md-3 mb-2">
									<label>Roll no</label> <input type="text" class="form-control"
										id="validationDefault02" name="srollno" placeholder="Last name" value="<%= user2.getRollno() %>"
										readonly>
								</div>

								<div class="col-md-3 mb-3">
									<label>Date of Birth</label> <input type="date"
										class="form-control" name="dob" id="validationDefault02"
										placeholder="Last name" value="" required>
								</div>

							</div>



							<div class="form-row">
								<div class="col-md-6 mb-3">
									<label>Email</label> <input type="text" class="form-control"
										id="validationDefault03"  name="semail"placeholder="City"  value="<%= user2.getEmail()%>"readonly>
								</div>
								<div class="col-md-3 mb-3">
									<label for="validationDefault04">Mobile Number</label> <input
										type="text" class="form-control" name="mob" id="validationDefault04" value="<%= user2.getNumber() %>"
										placeholder="State" readonly>
								</div>
								<div class="col-md-3 mb-3">
									<label for="validationDefault05">Alternate Mobile
										Number</label> <input type="text"  name="altermob" class="form-control"
										id="validationDefault05" placeholder="Enter Alternate Numebr" required>
								</div>
							</div>




							<div class="form-row">
								<div class="col-md-4 mb-3">
									<label for="validationCustom01">X Percentage</label> <input
										type="text" class="form-control" name="ten" id="10thPercentage"
										placeholder="Enter 10th percentage" value="" required>
									
								</div>
								
								<div class="col-md-4 mb-3">
									<label for="validationCustom02">XII Percentage</label> <input
										type="text" class="form-control" id="12thPercentage"
										placeholder="Enter 12th Percentage"  name="tweleve" required>
								
								</div>
								
								<div class="col-md-4 mb-3">
									<label for="validationCustom02">Average</label> <input
										type="text" class="form-control"  name="tentwelveper" id="result"
									  readonly>
								
								</div>
								
								
							</div>
							
						
						<!-- semester 1 aand semester 2 -->
						
						<div class="head">
							<header style="color:blue; margin-left:-10px;margin-bottom: 8px;">Semester I</header>
			
						
							<header style="color:blue; margin-left:43%;margin-bottom: 8px;">Semester II</header>
				</div>
					
						
						
							<div class="row">
							
							<div class="col-md-6" >
							
							<div class="form-row">
							<div class="col-md-6 mb-3">
									<label for="validationDefault04">CGPA</label> <input
										type="text" class="form-control" id="cgpasem1" name="firstSemCgpa"
										placeholder="Enter 1st Sem CGPA" onchange="convert1()" required>
								</div>
								<div class="col-md-6 mb-3">
									<label for="validationDefault05">Percentage
										</label> <input type="text" class="form-control" name="firstSemPercentage"
										id="per1"  readonly>
								</div>
								</div>
							
							
							
							</div>
							
							
							
							<div class="col-md-6">
							
							<div class="form-row">
							<div class="col-md-6 mb-3">
									<label for="validationDefault04">CGPA</label> <input
										type="text" class="form-control" id="cgpasem2" name="secondSemCgpa"
										placeholder="Enter 2nd Sem CGPA" onchange="convert2()" required>
								</div>
								<div class="col-md-6 mb-3">
									<label for="validationDefault05">Percentage
										</label> <input type="text" class="form-control" name="secondSemPercentage"
										id="per2"readonly>
								</div>
								</div>
							
							
							
							</div>
							</div>
							
								<!-- semester 1 aand semester 2 -->
								
								
								
								
									<!-- semester 3 aand semester 4 -->
						
						<div class="head">
							<header style="color:blue; margin-left:-10px;margin-bottom: 8px;">Semester III</header>
			
						
							<header style="color:blue; margin-left:43%;margin-bottom: 8px;">Semester IV</header>
				</div>
					
						
						
							<div class="row">
							
							<div class="col-md-6" >
							
							<div class="form-row">
							<div class="col-md-6 mb-3">
									<label for="validationDefault04">CGPA</label> <input
										type="text" class="form-control" id="sem3cgpa" name="thirdSemCgpa"
										placeholder="Enter 3rd Sem CGPA"  value="" onchange="convert()"  required>
								</div>
								<div class="col-md-6 mb-3">
									<label for="validationDefault05">Percentage
										</label> <input type="text" class="form-control" name="thirdSemPercentage"
										id="percentagesem1" placeholder="" readonly>
								</div>
								</div>
							
							
							
							</div>
							
							
							
							<div class="col-md-6">
							
							<div class="form-row">
							<div class="col-md-6 mb-3">
									<label for="validationDefault04">CGPA</label> <input
										type="text" class="form-control" id="cgpasem4" name="fourthSemCgpa"
										placeholder="Enter 4th Sem CGPA" onchange="convert4()" required>
								</div>
								<div class="col-md-6 mb-3">
									<label for="validationDefault05">Percentage
										</label> <input type="text" class="form-control" name="fourthSemPercentage"
										id="per4" placeholder="" readonly>
								</div>
								</div>
							
							
							
							</div>
							</div>
							
								<!-- semester 3 aand semester 4 -->
								
								
								
								
							
							
							
							
							<!-- backlog -->

							<div class="form-group">
								<label for="inputAddress">Backlog  <span style="color:blue;"> (if any)</span></label>
								 <input type="Number"
									class="form-control" id="inputAddress" name="backlog"
									placeholder="Number of backlog currently">
							</div>
							
							
							<!-- gap and diploma input field -->
						
						<div class="form-row">
								<div class="form-group col-md-6">
									<label>Gap <span style="color:blue;"> (if any)</span></label> 
									<input type="text"
										class="form-control" name="gap" placeholder="In Years"  >
								</div>
								<div class="form-group col-md-6">
									<label >Diploma <span style="color:blue;"> (if any)</span></label> <input
										type="text" class="form-control" id="Done any diploma"
										placeholder=""  name="diploma">
								</div>
							</div>





							<div class="card-footer">
							<div class="text-center"><button type="submit" class="btn btn-outline-success">Save</button></div>
					</div>

						</form>
					</div>
					
					<!-- card footer -->
					
					
					
				</div>
			</div>
		</div>
	</div>









  
  
  

<script type="text/javascript">

  const tenthPercentageInput = document.getElementById("10thPercentage");
  const twelfthPercentageInput = document.getElementById("12thPercentage");
  const resultInput = document.getElementById("result");

  function calculateResult() {
    const tenthPercentage = parseFloat(tenthPercentageInput.value);
    const twelfthPercentage = parseFloat(twelfthPercentageInput.value);
    const result = (tenthPercentage + twelfthPercentage)/2;

    resultInput.value = result.toFixed(2);
  }

  tenthPercentageInput.onchange = calculateResult;
  twelfthPercentageInput.onchange = calculateResult;
  
  </script>




<script type="text/javascript">


//Disable submit button after form is submitted
//document.getElementById("submit-button").addEventListener("click", function() {
//	this.disabled = true;
//});






function convert() {
	
	let cgpa = document.getElementById("sem3cgpa").value;
	
	//calculating
	let percentage = cgpa * 9.5;
	// Display percentage in output field
    document.getElementById("percentagesem1").value = percentage.toFixed(2);
}


function convert4() {
	
	let cgpa = document.getElementById("cgpasem4").value;
	
	//calculating
	let percentage = cgpa * 9.5;
	// Display percentage in output field
    document.getElementById("per4").value = percentage.toFixed(2);
}


function convert2() {
	
	let cgpa = document.getElementById("cgpasem2").value;
	
	//calculating
	let percentage = cgpa * 9.5;
	// Display percentage in output field
    document.getElementById("per2").value = percentage.toFixed(2);
}


function convert1() {
	
	let cgpa = document.getElementById("cgpasem1").value;
	
	//calculating
	let percentage = cgpa * 9.5;
	// Display percentage in output field
    document.getElementById("per1").value = percentage.toFixed(2);
}




</script>


</body>
</html>