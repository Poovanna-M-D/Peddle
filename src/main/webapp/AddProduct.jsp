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
	
	<div class="container" style="padding-top: 85px" >
	 	<div class="text-center">
	 		<h2 style="color: black; font-family: fantasy; font-style: italic; font-variant: small-caps; text-decoration: underline;">Add Products</h2>
		</div> 
	</div>	
		
	<div class="container"  style="font-family: cursive;">
		<div class="row" >
			<div class="col-md-6 offset-md-3">
        	    <div class="container p-2" >
					
					<form action="addproduct" method="post">
	
					<div class="mb-3">
						<label>Product Name</label> 
						<input class="form-control" type="text" name="name">	
					</div>
					
					<div class="mb-3">
						<label>Brand</label> 
						<input class="form-control" type="text" name="brand">	
					</div>
						
					<div class="mb-3">
						<label>Description</label> 
						<input class="form-control" type="text" name="description">	
					</div>
						
					<div class="mb-3">
						<label>Category</label> 
						<input class="form-control" type="text" name="category">	
					</div>
						
					<div class="mb-3">
						<label>Price</label> 
						<input class="form-control" type="number" name="price">	
					</div>
					
					<div class="mb-4">
						<label>Image</label> 
						<input class="form-control" type="file" name="image">	
					</div>
						
				    <div class="mb-4">
						<div class="col-md-5 offset-md-3">	
							<div class="card card-sh">
			    				 <button class="btn btn-outline-warning" type="submit" style="font-variant: small-caps; background-color:menu; font-family:sans-serif;">ADD PRODUCT</button>
			    			</div>
			    		</div>
			    	</div>
			   </form>		    	
			</div>	
		</div>
	</div>
</div>
	
</body>
</html>