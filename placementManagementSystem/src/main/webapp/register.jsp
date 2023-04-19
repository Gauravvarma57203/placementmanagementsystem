<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<%@include  file="Component/style.jsp" %>
</head>
<style>

body{
overflow: hidden;

}

.container{


top: 50px;
overflow: hidden;
height:570px;
  position: relative;
  background: #fff;
  box-shadow: 0 19px 38px rgba(0, 0, 0, 0.30), 0 15px 12px rgba(0, 0, 0, 0.22);
}

.btn-class{
    border-color: #036564 !important;
    color: #036564!important;
    width: 120px!important;
}
.btn-class:hover{
    background-color:  #036564!important;
    color: #fff!important;
}

#cross:hover{
	 transform: scale(1.1);
}


.col i{

	position:  absolute;
	left: 320px;
	top: 41px;
	cursor: pointer;
}
	
</style>
<body>


<div class="container p-0">

<div class="row border">


<div class="col-md-4" >

<img alt="" src="Images/registerimg.png" height="570px" width="450px">
<a href="index.jsp" style="position: absolute; top: 1px; left:-20px;"><i  id="cross" class="fa-solid fa-circle-xmark" style="font-size: 40px; margin-left:95%; color:#FF725E"></i></a>
</div>



<div class="col-8">
<div class="card" style="height:570px">



<div class="card-body">


<div class="text-center text-uppercase font-weight-bold p-2">
<h5 style="color: #036564">  Create Account</h5>
</div>

<form action="AddServlet" method="Post" onsubmit="return validateForm()" >
		<%@include file="Component/message.jsp" %>
<div class="form-row">
    <div class="form-group col-md-6">
      <label> Roll No</label>
      <input type="number" class="form-control" id="rollno" name="roll_no" placeholder="Enter Roll No" >
       <small id="rollerror" class="form-text text-danger" > <!-- Enter some thing --></small>
    </div>
    
    <div class="form-group col-md-6">
      <label>Username </label> 
      <input type="text" class="form-control" name="user_name" id="uname" placeholder="Enter Username" >
       <small id="usererror" class="fo rm-text text-danger" > <!-- Enter some thing --></small>
    </div>
  </div>
  
  
  
  	
<div>
	<label>Full Name</label><br>
</div>
  <div class="form-row">
  
    <div class="col mb-1">
      <input type="text" class="form-control" id="fname" name="firstname" placeholder="First name">
      <small id="fnameerror" class="form-text text-danger" > <!-- Enter some thing --></small>
    </div>
    <div class="col  ">
      <input type="text" class="form-control" name="midname" id="mname"placeholder="Middle name">
      <small id="mnameerror" class="form-text text-danger" > <!-- Enter some thing --></small>
    </div>
     <div class="col">
      <input type="text" class="form-control" id="lname" name="lastname" placeholder="Last name">
      <small id="lnameerror" class="form-text text-danger" > <!-- Enter some thing --></small>
      
    </div>
    
  </div>
  
  
  
  
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4"> Email</label>
      <i class="fa-regular fa-envelope"></i>
      <input type="email" class="form-control" id="emailcheck" name="email"> 
       <small id="emailvalid" class="form-text text-danger" > <!-- Enter some thing --></small>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Mobile Number</label> 
      <input type="tel" class="form-control" id="num" name ="number"  >
       <small id="numbervalid" class="form-text text-danger" > <!-- Enter some thing --></small>
    </div>
  </div>

<!-- chech icon for password -->
  
  <div class="form-row">
  
  
  
  <div class="col">
    <label>Password</label>
    <input  type="password" class="form-control" id="pass" /><i id ="passicon" class="fa-sharp fa-solid fa-eye-slash" ></i>
    <small id="passerror" class="form-text text-danger" > <!-- Enter some thing --></small>
  </div>

<div class="col">
    <label>Confirm Password</label>
    <input type="password" class="form-control" id="cnfpsk" name="cpass"
    >
    <small id="perror" class="form-text text-danger" > <!-- Enter some thing --></small>
  </div>
	  
  </div>
  
  
  
 <div class="text-center p-4">
 
  <button  type="submit" class="btn btn-class ml-1 but2 " >Submit</button>
  <button type="reset" class="btn btn-outline-warning ml-4">Clear</button>    

  </div>
  
   <p class="text-center text-uppercase font-weight-bold"> Already Account ? <a href="Login.jsp" style="color: #036564"> Sign in</a></p>
 



</form>
</div>
</div>
</div>

</div>
</div>





<script type="text/javascript">



	let passicon = document.getElementById("passicon");
	let password = document.getElementById("pass");
	let cnfpass = document.getElementById("cnfpsk");
	
	
//show password
	passicon.onclick = function() {
		if (password.type == "password") {

			password.type = "text";
			cnfpass.type = "text";
			
		} else {
			password.type = "password";
			
			cnfpass.type ="password";
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	//validation
	
					let username = document.getElementById("uname");
					let  fname = document.getElementById("fname");
					let  mname = document.getElementById("mname");
					let  lname = document.getElementById("lname");
					let emailcheck = document.getElementById("emailcheck");
					let num = document.getElementById("num");
					let p = document.getElementById("pass");
					let cp = document.getElementById("cnfpsk");


					
			
					var flaguser = 0;
				 	var flageamil = 0;
					var flagmob= 0;
					var flagfname=0;
					var flagmname =0;
					var flaglname =0;
					
					var flagp =0;
					var flagconfirmpsk = 0;
					
					
											
					
					function validateForm(){
						
						
						//regix
						 var usernamedata = /^[a-zA-Z\-]+$/;
						
					     var letter = /^[a-zA-Z ]*$/;
					     var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
					     
					     var mobdigit= /^\d{10}$/;
					     
					     var pchecker =  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
					     
					   

					     
						 
						 var validUsername = username.value.match(usernamedata);
					    var validname = fname.value.match(letter);
					    
					    var midname =mname.value.match(letter);
					    
					    var lastname =lname.value.match(letter);
					    
					    var evalid = emailcheck.value.match(mailformat);
					    
					    var mobvalid = num.value.match(mobdigit);
					    
					    var pvalidate =p.value.match(pchecker);
					    
					  
					
						
					//email
						
				 if(!evalid){
						document.getElementById("emailvalid").innerHTML ="!  Invalid Email Id , Provide proper format ";
						flageamil = 0;
				}else{
					document.getElementById("emailvalid").innerHTML ="";
					flageamil =1;

				}  

		
						
						//username validating
					
					if(username.value == ""){
						document.getElementById("usererror").innerHTML ="! Please fill the username";
						flaguser =0;
					}else if(username.value.length < 3){
						document.getElementById("usererror").innerHTML ="! usename must have min 3 char";
						flaguser =0;
					}else if(validUsername == null){
						document.getElementById("usererror").innerHTML ="! usename  is not valid. Only characters A-Z, a-z and '-' are  acceptable.";
						flaguser =0;
					}else{
						document.getElementById("usererror").innerHTML ="";
						flaguser =1;

					}

						//firstname
					
					if(fname.value == ""){
						document.getElementById("fnameerror").innerHTML ="! Please fill the Firstname";
						flagfname =0;
					}else if(fname.value.length < 3){
						document.getElementById("fnameerror").innerHTML ="! usename must have min 3 char";
						flagfname =0;
					}else if(!validname){
							document.getElementById("fnameerror").innerHTML ="! Firstname  is not valid. Only characters A-Z, a-z are  acceptable.";
							flagfname = 0;
					}else{
							document.getElementById("fnameerror").innerHTML ="";
							flagfname =1;	

						}  
						
						
						//mid name
						
					if(mname.value == ""){
						document.getElementById("mnameerror").innerHTML ="! Please fill the Middlename";
						flagmname =0;
					}else if(mname.value.length < 3){
						document.getElementById("mnameerror").innerHTML ="! Middlename must have min 3 char";
						flagmname =0;
					}else if(!midname){
							document.getElementById("mnameerror").innerHTML ="! Middlename  is not valid. Only characters A-Z, a-z are  acceptable.";
							flagmname = 0;
					}else{
							document.getElementById("mnameerror").innerHTML ="";
							flagmname =1;	

						}  
					
					
					//lastname
					
					
					if(lname.value == ""){
						document.getElementById("lnameerror").innerHTML ="! Please fill the username";
						flaglname =0;
					}else if(lname.value.length < 3){
						document.getElementById("lnameerror").innerHTML ="! usename must have min 3 char";
						flaglname =0;
					}else if(!lastname){
							document.getElementById("lnameerror").innerHTML ="!  Lastname  is not valid. Only characters A-Z, a-z are  acceptable.";
							flaglname = 0;
					}else{
							document.getElementById("lnameerror").innerHTML ="";
							flaglname =1;	

						}  
					
					
					
					//number validation
					if(num.value == ""){
						document.getElementById("numbervalid").innerHTML =" ! Enter mobile number";
						flagmob =0;
					}else if(isNaN(num.value)){
					document.getElementById("numbervalid").innerHTML =" ! Please fill numberic value ";
					flagmob =0;
				}else if((num.value.charAt(0) !=9) && (num.value.charAt(0) !=8) && (num.value.charAt(0) !=7)){
					document.getElementById("numbervalid").innerHTML =" Mobile number must start with 7 , 8 or 9";
					flagmob =0;
				}else{
					document.getElementById("numbervalid").innerHTML ="";
					flagmob =1;
				}
					
					
					// create password validation  
					
					if(!pvalidate){
						document.getElementById("passerror").innerHTML ="password between 8 to 15 characters which contain at least one lowercase letter, one uppercase letter, one numeric digit, and one special character";
						flagp =0;
					}else{
						document.getElementById("passerror").innerHTML ="";
						flagp =1;
					}
					
					
					
					
					//confirm password
					
					if (p.value == cp.value) {
						document.getElementById("perror").innerHTML ="";
						flagconfirmpsk=1;
					    } else {
					    	document.getElementById("perror").innerHTML =" password not matched";
					    	flagconfirmpsk =0;
					    }
					 
				
					
					

		if (flagmob == 1 && flaguser == 1 && flageamil == 1 && flagfname == 1 && flagmname == 1 && flaglname == 1 && flagp == 1 
				&& flagconfirmpsk == 1) {
			
			return true
		} else {
			return false;s
		}

	}
</script>







</body>
</html>