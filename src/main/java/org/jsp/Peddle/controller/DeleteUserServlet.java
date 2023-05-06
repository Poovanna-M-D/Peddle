package org.jsp.Peddle.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsp.Peddle.dao.UserDao;
import org.jsp.Peddle.dto.User;

@WebServlet("/delete")
public class DeleteUserServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException 
	{
		HttpSession session = req.getSession();
		User u = (User)session.getAttribute("user");
		if(u!=null)
		{
			int id = u.getId();
			
			UserDao dao = new UserDao();
			dao.deleteUser(id);
			
			RequestDispatcher dispatcher = null;
			session.invalidate();
			PrintWriter writer = resp.getWriter();
			writer.print("<html><body><h4 style=\"color:red; font-family: fantasy;\" align=\"center\" >Your Account Has Been Deleted</h4></body></html>");
			dispatcher = req.getRequestDispatcher("Login.jsp");
			dispatcher.include(req, resp);	
		
		}
		else
		{
			resp.sendRedirect("Login.jsp");
		}
	}
}
