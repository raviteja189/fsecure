package com.signup;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.signup.dao.SignupDao;


@WebServlet("/Signup")
public class Signup extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstname=request.getParameter("first");
		String lastname=request.getParameter("last");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		SignupDao sd=new SignupDao();
		if(sd.insert(firstname, lastname, email, password))
		{
			response.sendRedirect("login.jsp");
		}
		else
		{
			PrintWriter p=response.getWriter();
			p.write("account didn't created please try again");
		}
		
	}

}
