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
		User user = (User) session.getAttribute("user");
	    if(user!=null)
	    {
	%>
	
	<div class="container" style="padding-top: 85px" >
	 	<div class="text-center">
	 		<h2 style="color: black; font-family: fantasy; font-style: italic; font-variant: small-caps; text-decoration: underline;">Edit Profile</h2>
		</div>
	
		
		<div class="container"  style="font-family: cursive;">
			<div class="row" >
				<div class="col-md-6 offset-md-3">

		 			<form action="edit" method="post">
					<input type="hidden" name="id" value= "<%= user.getId() %>">
				
						<div class="mb-3">
							<label>Name</label> 
							<input class="form-control" type="text" name="name" value="<%= user.getName() %>">	
						</div>
						
						<div class="mb-3">
							<label>Phone Number</label> 
							<input class="form-control" type="tel" name="phone" value="<%= user.getPhone()%>">	
						</div>
							
						<div class="mb-3">
							<label>Email ID</label> 
							<input class="form-control" type="email" name="email" value="<%= user.getEmail() %>">	
						</div>
							
						<div class="mb-3">
							<label>Age</label> 
							<input class="form-control" type="number" name="age"value="<%= user.getAge() %>">	
						</div>
							
						<div class="mb-3">
							<label>Gender: &nbsp;&nbsp;&nbsp;  </label>
							<input type="radio" name="gender" value="Male">Male &nbsp;&nbsp;&nbsp;&nbsp;   
							<input type="radio" name="gender" value="Female">Female
						</div>
							
						<div class="mb-4">
							<label>Password</label> 
							<input class="form-control" type="password" name="password" value="<%= user.getPassword() %>">	
						</div>
							
					    <div class="mb-2">
							<div class="col-md-5 offset-md-3">	
								<div class="card card-sh">
				    				 <button class="btn btn-outline-warning" type="submit" style="font-variant: small-caps; background-color:menu; font-family:sans-serif;">UPDATE</button>
				    			</div>
				    		</div>
				    	</div>
				   </form>		    	
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