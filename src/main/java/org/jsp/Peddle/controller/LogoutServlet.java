package org.jsp.Peddle.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/logout")
public class LogoutServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException 
	{
		
		RequestDispatcher dispatcher = null;
		req.getSession().invalidate();
		PrintWriter writer = resp.getWriter();
		writer.print("<html><body><h4 style=\"color:red; font-family: fantasy;\" align=\"center\" >YOU ARE LOGGED OUT</h4></body></html>");
		dispatcher = req.getRequestDispatcher("Login.jsp");
		dispatcher.include(req, resp);
	}
}
