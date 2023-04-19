<%@page import="Bean.User"%>
<%
		User user=(User)session.getAttribute("current-user");

		if(user==null){
			session.setAttribute("message", "You are not Logged in ! Login First");
			response.sendRedirect("adminlogin.jsp");
			return;
		}

		else{
			if(user.getIstype().equalsIgnoreCase("student")){

				
				session.setAttribute("message", "you are not admin !do not access it");
				session.removeAttribute("current-user");
				response.sendRedirect("adminlogin.jsp");
				return;
			}
		}

		
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

		
%>




<!DOCTYPE html>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="Bean.Company"%>
<%@page import="Dao.CompanyDao"%>
<%@page import="Bean.Students"%>
<%@page import="java.util.List"%>
<%@page import="Dao.StudentDataDao"%>
<%@page import="Dao.StudentDao"%>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://code.jquery.com/jquery-3.6.0.js"
      integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.jquery.js"
      integrity="sha512-eSeh0V+8U3qoxFnK3KgBsM69hrMOGMBy3CNxq/T4BArsSQJfKVsKb5joMqIPrNMjRQSTl4xG8oJRpgU2o9I7HQ=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    ></script>
    
    <%@include file="Component/style.jsp" %>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.css"
      integrity="sha512-0nkKORjFgcyxv3HbE4rzFUlENUMNqic/EzDIeYCgsKa/nwqr2B91Vu/tNAu4Q0cBuG4Xe/D1f/freEci/7GDRA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <title>Recurit Student</title>
    
    
    <style>
    
    
.btn-class{
    border-color: #036564 !important;
    color: #036564!important;
    width: 140px!important;
  
    
    align-items: center;
}
.btn-class:hover{
    background-color:  #036564!important;
    color: #fff!important;
}
    
    
    </style>
  </head>
  <body>
  
  <%@include file="Component/navbar.jsp" %>
  
  <%
  		StudentDataDao studentdao = new StudentDataDao();
  			List<Students> studentlist =studentdao.getAllStudent();
  			
  			CompanyDao companydao = new CompanyDao();
  			List<Company> companylist = companydao.getAllCompany();
  
  %>
  
  
 
 
  
  
  
  	<div class="container">
  	<div class="row">
  	<div class="col-md-6 offset-md-3 mt-4">
  	<div class="card">
  	<%@include file="Component/message.jsp" %>
  	
  		<div class="card-body">
  		
  		
  		<!--   previous form method -->
  		 <form action="OperationalServlet" class="p-2" method="post">
  		 <div class="form-group">
    		
    		<h5 style="text-align: center; padding: 2px; color: #036564">Enter Selected Student Data</h5>
    		
    		
    		    
    
    
    <div class="form-group" style="margin-bottom: 5%;">
    <label for="exampleFormControlSelect1" style="font-size: 16px;">Select Company</label>
    <select data-placeholder="Choose a name..."  name="choosedcompany" class="ch  form-control" style="width:100%;">
      <option>Choose Company</option>
           <%         for(Company c :companylist ){
    %>
      <option><%= c.getCompanyname() %></option>
      <%
           }
      %>
      
    </select>
    </div>
    
    
      <div class="form-group" style="margin-bottom: 5%;">
    
    
        <label>Interview Date</label>
    <input type="date" class="form-control"  aria-describedby="emailHelp"  name="interviewdate" placeholder="Enter email" required="required">
    
  </div>
    
    
    
    
    

    

    
    
    
    
   
    <div class="col-auto">
      <label class="sr-only" for="inlineFormInputGroup">Username</label>
      <div class="input-group mb-2">
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa-solid fa-magnifying-glass"></i></div>
        </div>
        <input type="search"  onkeyup="searchFun()" class="form-control" id="searchdata" placeholder="Search by name">
      </div>
    </div>
   
  
    <table class="table table-bordered" style="height:100px; display: block; overflow-y:auto;" id="mytable">
   
    <%
    		for(Students s : studentlist){
    		
    
    %>
    <tr>
    <td><input type="checkbox" name="chkselect" value="<%= s.getName()%>"></td>
    <td><%= s.getName()%></td>
    </tr>
    <%
    
    		}
    %>
  
    
    </table>
    
    
    
    <button type="submit" class="btn btn-class" style="width:12em; margin-left: 35% ">Add</button>

</div>

</form>
  			
  		
  		
  		
  		</div>
  	
  	</div>
  	</div>
  	</div>
  	</div>
  
  
<script>


	
 const searchFun = () =>{
	 
	 let filter = document.getElementById("searchdata").value.toUpperCase();
	 
	 let mytable = document.getElementById("mytable");

	 let tr = mytable.getElementsByTagName("tr");

	 for(var i=0;i<tr.length;i++){
	       let td = tr[i].getElementsByTagName("td")[0];

	       if(td){
	         let textvalue =td.textContent || td.innerHTML;
	         if(textvalue.toUpperCase().indexOf(filter) > -1){
	           tr[i].style.display="";
	         }else{
	           tr[i].style.display ="none";
	         }
	       }
	 }
 }



</script>
  
  
 
    <script>
      $(document).ready(function () {
        $(".ch").chosen({
          width: "50%",
          no_results_text: "Oops, nothing found!",
          allow_single_deselect: true,
        });
      });
    </script>
  </body>
</html>
