package org.jsp.Peddle.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsp.Peddle.dao.ProductDao;
import org.jsp.Peddle.dto.Product;
import org.jsp.Peddle.dto.User;

@WebServlet("/addproduct")
public class AddProductServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException 
	{
		String name = req.getParameter("name");
		String brand = req.getParameter("brand");
		String description = req.getParameter("description");
		String category = req.getParameter("category");
		double price = Double.parseDouble(req.getParameter("price"));
		String image = req.getParameter("image");
		
		Product p = new Product(name, brand, description, category, price, image);
		
		ProductDao dao = new ProductDao();
		User u = (User) req.getSession().getAttribute("user");
		p = dao.saveProduct(p, u.getId());
	
		
		RequestDispatcher dispatcher = null;
		PrintWriter writer = resp.getWriter();
		writer.print("<html><body><div style=\"padding-top: 30px\"><h4 style=\"color:white; font-family: cursive;\" align=\"center\" >PRODUCT ADDED SUCCESSFULLY</h4></div></body></html>");
		dispatcher = req.getRequestDispatcher("Output.jsp");
		dispatcher.include(req, resp);
	}
}
