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


%>

<%@page import="Bean.User"%>



<!DOCTYPE html>
<%@page import="Bean.Company"%>
<%@page import="Dao.CompanyDao"%>
<%@page import="Bean.Students"%>
<%@page import="java.util.List"%>
<%@page import="Dao.StudentDataDao"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="./css_final.css">
    <title>Fixed table</title>
    <%@include file="Component/style.jsp" %>
<style type="text/css">

* {
    margin: 0px;
    padding: 0;
    font-family: Arial, Helvetica, sans-serif;

}



.outer-wrapper {
    margin: 10px;
    margin-left: 20px;
    margin-right: 20px;
    border: 1px solid black;
    border-radius: 4px;
    box-shadow: 0px 0px 3px rgba(0, 0, 0, 0.9);
   
    max-height: fit-content;
    width:96%;

    
}
.table-wrapper {

    overflow-y: scroll;
  	width : 98%;
    height: fit-content;
    max-height: 66.4vh;
    margin-top: 22px;
    
    margin: 15px;
    padding-bottom: 20px;
    
}


table {
    
    min-width: max-content;
    width:100%;
    border-collapse: separate;
    border-spacing: 0px;    
    
}

#delete-button:hover{

color: #fff;

}

table th{
    position: sticky; 
    top: 0px;
    
    background-color: #036564;
    color:#fff;
    
    text-align: center;
    font-weight: normal;
    font-size: 18px;
    outline: 0.7px solid black;
    border: 1.5px solid black;

} 



table th, table td {
    
    padding: 15px;
    padding-top: 10px;
    padding-bottom: 10px;
    
}

table td {
    text-align: left;
    
    font-size: 15px;
    border: 1px solid rgb(177, 177, 177);
    padding-left: 20px;
    
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


</style>

</head>

<body>

<%@include file="Component/navbar.jsp" %>



<%

		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");


%>

<%   
	CompanyDao companydao= new CompanyDao();
	List<Company> companylist = companydao.getAllCompany();

%>


<div class="container-fluid">
 <div class="input-group mb-3 mt-3" >  
            <input type="search" placeholder="Search by Company name" aria-describedby="button-addon5" onkeyup="searchFun()" id="searchdata" class="form-control">  
            <div class="input-group-append">  
              <button id="button-addon5" type="submit" class="btn btn-primary"> <i class="fa fa-search"> </i> </button>  
            </div>  
          </div>  		
		
		
	</div>


    <div class="outer-wrapper">
    <div class="table-wrapper">
    <table id="mytable">
        <thead>
            <tr>
						<th  >Sr no</th>
						<th>Company Name</th>
						<th  >Student name</th>
						<th  >Email</th>
					
						
						<th >Package</th>
						<th >Date</th>
			
						
						
					</tr>
            
        </thead>
        <tbody>
  	  			
  	  			<%
  	  					for(Company c : companylist){
  	  			%>
  			 <tr>
  		      <th scope="row"></th>
  		      
  		      <td><%= c.getCompanyname() %></td>
  		      	
  		      	<td>
  		  		      
  		  		   <%
  		  		   		List<Students> studentlist = c.getStudents();
  		  		   
  		  		   		for(Students s : studentlist){
  		  		   %>   
  		  		   		
  		  		     <h6 style="padding: 2px;" > <%= s.getName() %></h6>
  		  		      
  		  		       <%
  		  		   		}
  		  		       %>
  		  		       </td>
  		  		       
  		  		       
  		  		       
  		  		       <td>
  		  		       
  		  		       <%
  		  		       		for(Students s  : studentlist){
  		  		       %>
  		  		       
  		  		       <h6 style="padding: 2px;" > <%= s.getsEmail()%></h6>
  		  		       
  		  		       <%
  		  		       		}
  		  		       %>
  		  		       
  		  		       </td>
  		  		       
  		  		       
  		  		       <td><%= c.getSalarypackage() %></td>
  		  		       
  		  		       <td><%= c.getInterviewdate() %></td>
  		  		       
  		  		      
  		  		      
  		  		 </tr>     
  		      <%
  	  					}
  		      %>
  		      
  		      
  		     
  		
  		      
  		      
  		  		    
  		
  		    
  	
        </tbody>
    </table>
</div>
</div>
</body>

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

</html>