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

	<div class="container p-3" >
	 	<div class="text-center fs-3" style="font-family: cursive;">
			 <!--  <h4 style="color:white;">Welcome to the Place where you can sell your Products. </h4>     -->
			 <img alt="Peddle Logo" src="Components/peddle logo.png"  width="140" height="110">
		 </div>
		</div> 
	
		<div class="column" >
			<div class="col-md-6 offset-md-3">
				<div class="card card-sh">
					<div class="card-header" style="font-variant: small-caps; background-color:menu; font-family: sans-serif;"   >
						<p class="text-center fs-3" >Login to Your Account</p>
					</div>
			 			
					<div class="card-body">
						<form action="login" method="post">
						
							<div class="mb-4">
								<label>Phone Number</label> 
								<input class="form-control" type="tel" name="phone" placeholder="Enter Your Phone Number">	
							</div>
			
							<div class="mb-5">
								<label>Password</label> 
								<input class="form-control" type="password" name="password" placeholder="Enter Your Password">	
							</div>
							
							<div class="mb-2">
								<div class="col-md-5 offset-md-3">	
									<div class="card card-sh">
										 <button class="btn btn-outline-warning" type="submit" style="font-variant: small-caps; background-color:menu; font-family:sans-serif;">LOGIN</button>
						    		</div>
						    	</div>
						    </div>
						</form>		
					</div>
				</div>
			</div>
		</div>
	
		<div class="container p-4" >
		 <div class="text-center fs-3" style="font-family: cursive;">
			 <h6 style="color:white;">CLICK HERE TO REGISTER -> 
				 <a href="Register.jsp">	
					<button class="btn btn-outline-warning" type="button" style="font-family: sans-serif;">REGISTER</button>
			 	</a>
			 </h6>
		 </div>
		</div> 
</body>
</html>
	
	
  
