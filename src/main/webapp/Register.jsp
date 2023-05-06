<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PEDDLE</title>
<%@include file="Components/CSS.jsp" %>

<style type="text/css">
.card-sh
		{	
		background-color: #FFD801;
		box-shadow: 0 0 9px 0 rgb(255, 255, 255);
		font-family: cursive;
		}
</style>
</head>

<body class="bg-dark" >
	<img alt="Peddle Logo" src="Components/peddle logo.png"  width="110" height="90" align="left">

		<div class="container p-3" >
			<div class="column" >
				<div class="col-md-6 offset-md-3">
					<div class="card card-sh">
						<div class="card-header" style="font-variant: small-caps; background-color:menu; font-family: sans-serif;"   >
							<p class="text-center fs-3" >Registration Form</p>
						</div>
			 			
					<div class="card-body">
					<form action="register" method="post">
					
							<div class="mb-3">
								<label>Name</label> 
								<input class="form-control" type="text" name="name" placeholder="Enter Full Name">	
							</div>
							
							<div class="mb-3">
								<label>Phone</label> 
								<input class="form-control" type="tel" name="phone" placeholder="Enter Phone Number">	
							</div>
							
							<div class="mb-3">
								<label>Email ID</label> 
								<input class="form-control" type="email" name="email" placeholder="Enter Email ID">	
							</div>
							
							<div class="mb-3">
								<label>Age</label> 
								<input class="form-control" type="number" name="age" placeholder="Enter Your Age">	
							</div>
							
							<div class="mb-3">
								<label>Gender: &nbsp;&nbsp;&nbsp;  </label>
								<input type="radio" name="gender" value="Male">Male &nbsp;&nbsp;&nbsp;&nbsp;   
								<input type="radio" name="gender" value="Female">Female
							</div>
							
							<div class="mb-4">
								<label>Password</label> 
								<input class="form-control" type="password" name="password" placeholder="Enter Strong Password">	
							</div>
							
						        <div class="mb-2">
									<div class="col-md-5 offset-md-3">	
										<div class="card card-sh">
						    				 <button class="btn btn-outline-warning" type="submit" style="font-variant: small-caps; background-color:menu; font-family:sans-serif;">REGISTER</button>
						    			</div>
						    		</div>
						    	</div>
							</form>	
						 </div>	
					</div>
				</div>
			</div>
		</div>

		<div class="text-center fs-3" style="font-family: cursive;">
			 <h6 style="color:white;">Already Registered? Click here to LOGIN -> 
				 <a href="Login.jsp">	
					<button class="btn btn-outline-warning" type="button" style="font-family: sans-serif;">LOGIN</button>
			 	</a>
			 </h6>
		 </div>
		 
</body>
</html>