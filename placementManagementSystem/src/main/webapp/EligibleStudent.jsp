<!DOCTYPE html>
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
    font-family:times new roman ;

}



.outer-wrapper {
    margin: 10px;
    margin-left: 20px;
    margin-right: 20px;
    border: 1px solid black;
    border-radius: 4px;
    box-shadow: 0px 0px 3px rgba(0, 0, 0, 0.9);
    max-width: fit-content;
    max-height: fit-content;

    
}
.table-wrapper {

    overflow-y: scroll;
    overflow-x: scroll;
    height: fit-content;
    max-height: 66.4vh;
    
    margin-top: 22px;
    
    margin: 15px;
    padding-bottom: 20px;
    
}


table {
    
    min-width: max-content;
    
    border-collapse: separate;
    border-spacing: 0px;    
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    
    
}

#delete-button:hover{

color: #fff;

}

table th{
    position: sticky; 
    top: 0px;
    
    background-color: #009879;
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

<%@include  file="Component/navbar.jsp" %>

<%  

		StudentDataDao student = new StudentDataDao();
		List<Students> studentlist = student.getAllStudent();

%>


<div class="container-fluid">
 <div class="input-group mb-3 mt-3" >  
            <input type="search" placeholder="Search by names" aria-describedby="button-addon5" onkeyup="searchFun()" id="searchdata" class="form-control">  
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
						<th  >Roll no</th>
						<th  >Full Name</th>
						<th >Date of Birth</th>
						<th  >Email</th>
						<th  >Contact No</th>
						<th >Alternate Contact No</th>
						<th >Xth Percentage</th>
						<th >XIIth Percentage</th>
						<th >Average Xth & Xth Percentage</th>
						<th >Ist Sem CGPA</th>
						<th >Ist Sem Percenatge</th>
						<th >IInd Sem CGPA</th>
						<th >IInd Sem Percenatge</th>
						<th >II Year Percenatge</th>
						<th >III Sem CGPA</th>
						<th >IIIrd Sem Percenatge</th>
						<th >IVth Sem CGPA</th>
						<th >IVth Sem Percenatge</th>
						<th >2nd Year Percenatge</th>
						<th >Backlog</th>
						<th >Gap</th>
						<th >Diploma</th>
												
						
						
					</tr>
            
        </thead>
        <tbody>
           	<%
      			for (Students s : studentlist) {
      				
      				if(s.getEligible().equalsIgnoreCase("yes") && s.getBacklog()<1){
      			%>
  	  			
  			 <tr>
  		      <th scope="row"><%= s.getRollnumber() %></th>
  		      <td><%= s.getName() %></td>
  		      <td><%= s.getDateOfBirth() %></td>
  		      <td><%= s.getsEmail() %></td>
  		      <td><%= s.getMobNumber() %></td>
  		        <td><%= s.getAlternateNumber() %></td>
  		         <td><%= s.getTenthPercentage() %></td>
  		      <td><%= s.getTwelvethPercentage() %></td>
  		      <td><%= s.getAverageTenAndTwelvethPercentage() %></td>
  		      <td><%= s.getFirstSemCgpa() %></td>
  		      <td><%= s.getFirstSemPercentage()%></td>
  		      <td><%= s.getSecondSemCgpa()%></td>
  		      <td><%= s.getSecondSemPercentage()%></td>
  		      <td><%= s.getFirstYearPercentage() %></td>
  		      <td><%= s.getThirdSemCgpa() %></td>
  		      <td><%= s.getThirdSemPercentage() %></td>
  		      <td><%= s.getFourthSemCgpa() %></td>
  		      <td><%= s.getFourthSemPercentage() %></td>
				<td><%= s.getSecondYearPercentage() %></td>
				<td><%= s.getBacklog() %></td>
				<td><%= s.getGap() %></td>
				<td><%= s.getDiploma() %></td>
				

  		        
 
  		    
			
  		    </tr>
  		    
  		    <%
      				}
  					
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