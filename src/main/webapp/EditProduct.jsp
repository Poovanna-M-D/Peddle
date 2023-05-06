<%@page import="org.jsp.Peddle.dto.User"%>
<%@page import="org.jsp.Peddle.dto.Product"%>
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
		if (user != null) 
		{
			Product p = (Product) request.getAttribute("product");
	%>
	
	<div class="container" style="padding-top: 85px" >
	 	<div class="text-center">
	 		<h2 style="color: black; font-family: fantasy; font-style: italic; font-variant: small-caps; text-decoration: underline;">Edit Product Details</h2>
		</div> 
	</div>	
		
	<div class="container"  style="font-family: cursive;">
		<div class="row" >
			<div class="col-md-6 offset-md-3">	
	
			  <form action="editproduct" method="post">
			    <input type="hidden" name="id" value="<%=p.getId()%>">
			
				<div class="mb-3">
					<label>Product Name</label> 
					<input class="form-control" type="text" name="name" value="<%=p.getName()%>">	
				</div>
				
				<div class="mb-3">
					<label>Brand</label> 
					<input class="form-control" type="text" name="brand" value="<%=p.getBrand()%>">	
				</div>
				
				<div class="mb-3">
					<label>Description</label> 
					<input class="form-control" type="text" name="description" value="<%=p.getDescription()%>">	
				</div>
				
				<div class="mb-3">
					<label>Category</label> 
					<input class="form-control" type="text" name="category" value="<%=p.getCategory()%>">	
				</div>
			
				<div class="mb-3">
					<label>Price</label> 
					<input class="form-control" type="number" name="price" value="<%=p.getPrice()%>">	
				</div>
				
				<div class="mb-3">
					<label>Image</label> 
					<input class="form-control" type="file" name="image" value="<%=p.getImage()%>">	
				</div>
				
				 <div class="mb-3">
					<div class="col-md-5 offset-md-3">	
						<div class="card card-sh">
		    				 <button class="btn btn-outline-warning" type="submit" style="font-variant: small-caps; background-color:menu; font-family:sans-serif;">UPDATE</button>			    			</div>
				    	</div>
				    </div>
				  </div>  
		      </form>  	
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