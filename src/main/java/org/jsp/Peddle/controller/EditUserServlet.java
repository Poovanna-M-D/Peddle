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

@WebServlet("/edit")
public class EditUserServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException 
	{
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		long phone = Long.parseLong(req.getParameter("phone"));
		String email = req.getParameter("email");
		int age  = Integer.parseInt(req.getParameter("age"));
		String gender = req.getParameter("gender");
		String password = req.getParameter("password");
		
		User u = new User();
		u.setId(id);
		u.setName(name);
		u.setPhone(phone);
		u.setEmail(email);
		u.setAge(age);
		u.setGender(gender);
		u.setPassword(password);
		
		UserDao dao = new UserDao();
		u = dao.updateUser(u);
		
		HttpSession session = req.getSession();
		session.setAttribute("user", u);
		
		
		RequestDispatcher dispatcher = null;
		PrintWriter writer = resp.getWriter();
		writer.print("<html><body><div style=\"padding-top: 30px\"><h4 style=\"color:white; font-family: cursive;\" align=\"center\" >Your Profile has been Updated Successfully</h4></div></body></html>");
		dispatcher = req.getRequestDispatcher("Output.jsp");
		dispatcher.include(req, resp);	
	}
}
