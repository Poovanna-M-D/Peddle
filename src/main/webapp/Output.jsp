<%@page import="org.jsp.Peddle.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PEDDLE</title>
<%@include file="Components/CSS.jsp" %>
</head>

<body class="bg-dark">

  <%
		User user = (User) session.getAttribute("user");
	    if(user!=null)
	    {
	%>

		<div class="container p-5" >
		    <div class="text-center fs-3" style="font-family: cursive;">
				 <h4 style="color:white;">Revert Back To Home -> 
					 <a href="Home.jsp">	
						<button class="btn btn-outline-warning" type="button" style="font-family: sans-serif;">Home</button>
				 	</a>
				 </h4>
			</div>
		</div>	

	<% 
		}
	    else
	    {
	    	response.sendRedirect("Login.jsp");
	    }
	 %>
	 
</body>
</html>