package com.signup;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.signup.dao.SignupDao;


@WebServlet("/Signup")
public class Signup extends HttpServlet {
	

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname=request.getParameter("first");
		String lastname=request.getParameter("last");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		SignupDao sd=new SignupDao();
		if(sd.insert(firstname, lastname, email, password))
		{
			PrintWriter out=response.getWriter();
			out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
            out.println("<script>");
            out.println("$(document).ready(function(){");
        	out.println("swal ( 'WELCOME' ,  'successful!' ,  'success' )");
            //out.println("alert('Account created successfully!');");
        	out.println("});");
            out.println("</script>");
            RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
            rd.include(request,response);
		}
		else
		{
			PrintWriter out=response.getWriter();
			out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
            out.println("<script>");
            out.println("$(document).ready(function(){");
        	out.println("swal ( 'Oops' ,  'Something went wrong/Account already exists try again!' ,  'error' )");
            
        	out.println("});");
            out.println("</script>");
            RequestDispatcher rd=request.getRequestDispatcher("signup.jsp");
            rd.include(request,response);
		}
		
	}

}
