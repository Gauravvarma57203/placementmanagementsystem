<%@page import="Bean.Company"%>
<%@page import="Dao.CompanyDao"%>
<%@page import="Bean.Students"%>
<%@page import="java.util.List"%>
<%@page import="Dao.StudentDataDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="Component/style.jsp" %>

<style>

#contain{

background: #EFF3FD;
border-radius: 15px;
box-shadow: -10px -10px 30px #FFFFFF, 10px 10px 30px rgba(174, 174, 192, 0.4);
padding: 2px;


}

#contain .card{
background: #EFF7FF;
box-shadow: -10px -10px 30px #FFFFFF, 10px 10px 30px rgba(174, 174, 192, 0.4);
border-radius: 16px;


}
</style>
</head>
<body>

<%
		StudentDataDao stud = new StudentDataDao();
		List<Students> list =stud.getAllStudent();
		
		CompanyDao companydao = new CompanyDao();
		
		List<Company> comlist = companydao.getAllCompany();
		
		long st = list.stream().count();
		long eligiblecount =	list.stream().filter(p -> p.getEligible().equalsIgnoreCase("yes")).count();
		
		long compnaycount = comlist.stream().count();
	

%>



<div class="container-fluid" id="contain">

<div class="row">


<!-- 1st card -->
<div class='col-md-3'>
<div class="card ml-5 " style="width: 230px; height:150px;">
<div class="card-body">




<p style="font-style: normal; font-weight: 700; font-size: 67px; line-height: 106px; text-align: center;
color: rgba(236, 39, 39, 0.61);text-shadow: 0px 9px 4px rgba(0, 0, 0, 0.25);">75%</p>

<p style="font-style: normal;font-weight: 700;font-size: 16px;line-height: 22px;
color: rgba(236, 39, 39, 0.5);transform: matrix(1, 0, 0, 1, 0, 0); position: absolute;
left: 25.72%;top: 76.18%;bottom: 71.45%;

">Selection Percentage</p>



</div>
</div>
</div>


<!-- 2nd div -->
<div class='col-md-3'>
<div class="card" style="width: 230px; height:150px">
<div class="card-body">


<p style="font-style: normal; font-weight: 700; font-size: 67px; line-height: 106px; text-align: center;
color:rgba(3, 169, 244, 0.61);text-shadow: 0px 9px 4px rgba(0, 0, 0, 0.25);"><%= compnaycount %></p>


<p style="font-style: normal;font-weight: 700;font-size: 16px;line-height: 22px;
color:rgba(3, 169, 244, 0.61) ;transform: matrix(1, 0, 0, 1, 0, 0); position: absolute;
left: 37.72%;top: 76.18%;bottom: 71.45%;

">No of Company</p>


</div>
</div>
</div>


<!-- card 3 -->
<div class='col-md-3'>
<div class="card" style="width: 230px; height:150px">
<div class="card-body">



<p style="font-style: normal; font-weight: 700; font-size: 67px; line-height: 106px; text-align: center;
color: rgba(255, 127, 92, 0.75);text-shadow: 0px 9px 4px rgba(0, 0, 0, 0.25);"><%= eligiblecount%></p>


<p style="font-style: normal;font-weight: 700;font-size: 16px;line-height: 22px;
color: rgba(255, 127, 92, 0.75);transform: matrix(1, 0, 0, 1, 0, 0); position: absolute;
left: 40.72%;top: 76.18%;bottom: 71.45%;

">Eligible Student</p>



</div>
</div>
</div>



<!-- card 4 -->
<div class='col-md-3'>
<div class="card" style="width: 230px; height:150px">
<div class="card-body">



<p style="font-style: normal; font-weight: 700; font-size: 67px; line-height: 106px; text-align: center;
color: rgba(151, 71, 255, 0.64);text-shadow: 0px 9px 4px rgba(0, 0, 0, 0.25);"><%= st %></p>



<p style="font-style: normal;font-weight: 700;font-size: 16px;line-height: 22px;
color: rgba(151, 71, 255, 0.64);transform: matrix(1, 0, 0, 1, 0, 0); position: absolute;
left: 47.72%;top: 76.18%;bottom: 71.45%;

">No of Student</p>






<h1></h1>




</div>
</div>
</div>

</div>


</div>


<!-- fetch student data -->



<div class="container text-center mt-5" style="  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">

	<!--  <div class="container" style="border:1px solid red;">
		<!--  <nav class="navbar navbar-light bg-light">
  <form class="form-inline">
    <input class="form-control  "  type="search" placeholder="Search" aria-label="Search" style="width: 300%">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
		</nav>-->
		
		
		


<!-- table -->










</div>







</body>
</html>