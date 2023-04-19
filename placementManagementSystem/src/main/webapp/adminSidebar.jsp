<%@page import="Bean.User"%>


<!DOCTYPE html>
<html>


<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title></title>
<%@include file="Component/style.jsp" %>
<style>
body{
  font-family: 'Poppins',sans-serif;
  background: #fafafa;
}


p{
  font-family: 'Poppins', sans-serif;
  font-size: 1.1em;
  font-weight: 300;
  line-height: 1.7em;
  color: #999;

}

a,
a:hover,
a:focus{
  color: inherit;
  text-decoration: none;
  transition: all 0.3s;

}

/*  side bar*/

.wrapper{
  display: flex;
  text-decoration: none;
  transition: all 0.3s;

}


#sidebar{
    min-width: 250px;
    max-width: 250px;
    background: #7365d5;
    color: #fff;
    transition: all 0.3s;


}


.active{
margin-left:-250px;


}

#sidebar .sidebar-header{
  padding-bottom: 20px;
  background: #6d7fcc;

}


#sidebar ul.components{
  padding: 20px 0;
  border-bottom: 1px solid #47748b;

}

#sidebar ul p{
  color: #fff;
  padding: 10px;

}


#sidebar ul li a {
  padding: 10px;
  font-size: 1.1em;
   display: block;
}

#sidebar ul li a :hover{
  color: #754333;
  background: #fff;

}

#sidebar ul li.active>a,
a[aria-expanded="true"]{

  color: #fff;
  background: #6d7fcc;

}


a[data-toggle="collapse"]{
  position: relative;
}

.dropdown-toggle::after{

  display:block;
  position: absolute;
  top: 50%;
  right: 20%;
  transform: translateY(-50%);
  }


  ul ul a{
    font-size: 0.9em !important;
    padding-left: 30px !important;
    background: #6d7fcc;
  }


#content{

  width: 100%;
  padding: 20px;
  min-height: 100vh;
 transition: all 0.3s; 
}


</style>


</head>
<body>



<div class="wrapper">
    
<nav id="sidebar">
    
<div class="sidebar-header">
    <h3>Bootstrap slider</h3>
</div>


<ul class="list-unstyled components">
    

<p> Welcome admin</p>


  		<li>
            <a href="#">Dashboard</a>
        </li>

<li>
    
    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Home</a>

    <ul class="collapse list-unstyled" id="homeSubmenu">    
        <li>
            <a href="#">Home1</a>
        </li>

        <li>
            <a href="#">Home2</a>
        </li> 

        <li>
            <a href="#">Home3</a>
        </li>
    </ul>
</li>

<li>
<a href="">About</a>
</li>

<li>
    <a href="#pagesubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" >Pages</a>
    <ul class="collapse list-unstyled" id="pagesubmenu">
         <li>
            <a href="#">Page1</a>
        </li>

        <li>
            <a href="#">Page 2</a>
        </li>


    </ul>
</li>


        <li>
            <a href="#">Ploicy</a>
        </li>


        <li>
            <a href="#">contact us</a>
        </li>





</ul>
</nav>


<div id="content">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">

        <div class="container-fluid">
            
            <button type="button" id="sidebarCollapse" class="btn btn-info">
                <i class="fas fa-align-left"></i>

            </button>
        </div>

    </nav>
    
<br><br>


<!-- main content -->

<%@include file="admindashboarddata.jsp" %>
	<%@include file="getAllStudent.jsp" %>

	
	
<!-- main content -->

</div>







</div>









<script>


	$(document).ready(function(){
		$("#sidebarCollapse").on('click',function(){
			$("#sidebar").toggleClass('active');
		})
		
	});

</script>






</body>
</html>