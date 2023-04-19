<%@page import="java.util.stream.Collector"%>
<%@page import="Bean.Students"%>
<%@page import="Bean.Company"%>
<%@page import="java.util.List"%>
<%@page import="Dao.CompanyDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

.content-table {
    border-collapse: collapse;
    margin-left: 75px;
    margin-right: 75px; 
    font-size: 0.9em;
    width: 80%;
    border-radius: 5px 5px 0 0;
    overflow: hidden;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.content-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
    font-weight: bold;
}

.content-table th,
.content-table td {
    padding: 12px 15px;
}

.content-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.content-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.content-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}

.content-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}


</style>

</head>
<body>

<%

		CompanyDao companydao = new CompanyDao();

		List<Company> companylist = companydao.getAllCompany();

%>

<%@include file="Component/navbar.jsp" %>



    <table class="content-table" style="margin-top: 3%;">
        <thead>
          <tr>
            <th>Sr. no</th>
            <th>Company</th>
            <th>Type</th>
            <th> Month and Year</th>
            <th>No of Student</th>
          </tr>
        </thead>
        <tbody>
        		<%
        				long i=1;
        			for(Company x : companylist){
        		%>
          <tr>
            <td><%= i %></td>
            <td><%= x.getCompanyname() %></td>
            <td><%= x.getType() %></td>
            <td><%= x.getInterviewdate() %></td>
            
            <%
            	List<Students> studentlist = 	x.getStudents();
            	
            long l = studentlist.stream().count();
            %>
            
            
            
            
            
            <td><%= l %></td>
          </tr>
          <%
          		i++;
        			}
          %>
          
        </tbody>
      </table>




</body>
</html>