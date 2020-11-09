package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		LoginDao ld=new LoginDao();
		if(ld.validate(email, password))
		{
			
			HttpSession session=request.getSession();
			session.setAttribute("user", email);
			//session.setAttribute("pass", pass);
			response.sendRedirect("startpage.jsp");
		}
		else
		{
			
			response.sendRedirect("login.jsp");
		}
	}

}
