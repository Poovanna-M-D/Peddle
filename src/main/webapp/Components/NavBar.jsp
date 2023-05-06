<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PEDDLE</title>
<%@include file="CSS.jsp" %>
</head>

<body>

	 <nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color: black">
	 
      <img alt="Peddle Logo" src="Components/peddle logo.png"  width="100" height="55" align="left" onclick="Home.jsp">
		 
			  <div class="collapse navbar-collapse" id="navbarNav">
			    <ul class="navbar-nav">
			      <li class="nav-item active">
			        <a class="nav-link" href="Home.jsp">
			        <button class="btn btn-outline-warning" type="button">  
			        <i class="fa-solid fa-house-chimney-crack fa-bounce fa-lg"></i> 
			        </button>
			        </a>
			      </li>
			    </ul>
			  
			    <ul class="navbar-nav ms-auto" >
			      <li class="nav-item">
			       	 <a class="nav-link" href="delete">
			       	 	<button class="btn btn-outline-danger" type="button" style="font-family: sans-serif;">DELETE PROFILE</button>
			         </a>
			         
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="logout">
			        	<button class="btn btn-outline-warning" type="button" style="font-family: sans-serif;">LOGOUT</button>
			        </a>
		    </ul>
		  </div>
		</nav>
		
</body>
</html>