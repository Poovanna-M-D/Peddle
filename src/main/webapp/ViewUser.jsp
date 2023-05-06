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

<body style="background-color:#F6BE00;">
	<%@include file="Components/NavBar.jsp" %>  
	
	 <%
		User user = (User)session.getAttribute("user");
	    if(user!=null)
	    {
	%>
	
		<div class="container" style="padding-top: 95px" >
	 		<div class="text-center">
	 			<h2 style="color: black; font-family: fantasy; font-style: italic; font-variant: small-caps; text-decoration: underline;">Profile Details</h2>
			</div>
		</div>	
			
			<div class="container p-4" >
				<div style="color: black; font-style: italic; font-variant: small-caps;">
				<div class="col-md-9 offset-md-4">
				
				<div class="mb-3">
					<h2>  ID: &nbsp; <%= user.getId() %>  </h2>
				</div>
		        
				<div class="mb-3">
					<h2>  Name: &nbsp; <%= user.getName() %>  </h2>
				</div>
				
				<div class="mb-3">
					<h2>  Phone: &nbsp; <%= user.getPhone() %>  </h2>
				</div>
					
				<div class="mb-3">
					<h2>  Email: &nbsp; <%= user.getEmail() %>  </h2>
				</div>
					
				<div class="mb-3">
					<h2>  Age: &nbsp; <%= user.getAge() %>  </h2>
				</div>
					
				<div class="mb-3">
					<h2>  Gender: &nbsp; <%= user.getGender() %>  </h2>
				</div>	 			 	
			</div>
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