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
	 		<h2 style="color: black; font-family: fantasy; font-style: italic; font-variant: small-caps;">Welcome <%= user.getName() %></h2>
		</div>
	</div> 
	
	 <div class="text-center" style="padding-top: 15px">
	 	<h2 style="color: white; font-family: serif; font-style: italic; font-variant: small-caps;">The Place Where You Can Sell Your Products</h2>
	 </div>

	<div class="text-center">
		<div class="container p-5" >
			<div style="width: 100%; height: 260px;">
       			 <div style="width: 50%; height: 100px;  float:left;">  
					<div class="container p-3" >
						<h2 style="color: black; font-family: fantasy; font-style: italic; font-variant: small-caps; text-decoration: underline;" >Profile Card</h2>	
							  <div class="container p-2">	 	
								<h1>
									<a href="EditUser.jsp"> 
									<button class="btn btn-outline-dark" type="button" style="color: white; font-family: serif; font-style: italic; font-variant: small-caps;">Edit Profile</button>
									</a>
								</h1>
							  </div>
							  	
							<div class="container p-0" >	 		
								<h1>
									<a href="ViewUser.jsp">
									<button class="btn btn-outline-dark" type="button" style="color: white; font-family: serif; font-style: italic; font-variant: small-caps;"> View Profile</button>
									</a>
								</h1>	
							</div>	
						</div>  
					</div> 
	
		         <div style="width: 50%; height: 100px;  float:right;">  
					<div class="container p-3" >
						<h2 style="color: black; font-family: fantasy; font-style: italic; font-variant: small-caps; text-decoration: underline;">Product Card</h2>	
							<div style="font-family: cursive;">	 
							  <div class="container p-2" >	
								<h1>
									<a href="AddProduct.jsp">
									<button class="btn btn-outline-dark" type="button" style="color: white; font-family: serif; font-style: italic; font-variant: small-caps;"> Add Product</button>
									</a>
								</h1>
							  </div>	
								
							  <div class="container p-0" >		
								<h1>
									<a href="viewproducts"> 
										<button class="btn btn-outline-dark" type="button" style="color: white; font-family: serif; font-style: italic; font-variant: small-caps;"> View Product</button>
									</a>
								</h1>
							  </div>
							</div>	
					</div>  
				</div>
			</div> 

	 <!--	<div style="font-family: cursive;">
				<a href="ViewAllProducts.jsp">	
					<button class="btn btn-outline-light" type="button" style="color: black; font-family: fantasy; font-style: italic; font-variant: small-caps;">View All Products</button>
		 		</a>
	 		</div>
	 -->		
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