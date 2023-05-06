<%@page import="org.jsp.Peddle.dto.Product"%>
<%@page import="java.util.List"%>
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
		if (user != null) 
		{
			List<Product> products = (List<Product>) request.getAttribute("products");
	%>

		<div class="container" style="padding-top: 85px" >
	 		<div class="text-center">
	 			<h2 style="color: black; font-family: fantasy; font-style: italic; font-variant: small-caps; text-decoration: underline;">Your Product Details</h2>
			</div> 
		</div>	
		
		<div class="container">
			<div class="column" >
        		    <div class="container p-3" >
        		    
        				<table class="table">
							    <tr class="table-dark" style="font-family: cursive;"	>
							      <th scope="col">ID </th>
							      <th scope="col">Name</th>
							      <th scope="col">Brand</th>
							      <th scope="col">Description</th>
							      <th scope="col">Category</th>
							      <th scope="col">Price</th>
							      <th scope="col">Image</th>
									
							      <th scope="col">Edit</th>
								  <th scope="col">Delete</th>							      
							    </tr>
					    
						<%
							for (Product p : products) 
							{
						%>
								<tbody style="font-family: cursive;">
								<tr>
									<td><%=p.getId()%></td>
									<td><%=p.getName()%></td>
									<td><%=p.getBrand()%></td>
									<td><%=p.getDescription()%></td>
									<td><%=p.getCategory()%></td>
									<td><%=p.getPrice()%></td>
									<td><%=p.getImage()%></td>
									
									<td><a href="find?pid=<%=p.getId()%>" class="btn btn-sm btn-primary me-1">EDIT</a></td>
									<td><a href="deleteproduct?pid=<%=p.getId()%>" class="btn btn-sm btn-danger me-1">DELETE</a></td>
								</tr>
						<%
							}
						%>
								</tbody>
						</table>
	 				</div>
				</div>		
			</div>

	<%
		} 
		else 
		{
			response.sendRedirect("login.jsp");
		}
	%>

</body>
</html>