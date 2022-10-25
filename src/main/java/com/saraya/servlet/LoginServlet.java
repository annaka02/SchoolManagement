package com.saraya.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saraya.service.UserValidation;



@WebServlet(urlPatterns="/login.do")
public class LoginServlet extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request,response);
			}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		UserValidation valid = new UserValidation();
		
		
		String password = request.getParameter("word");
		String username = request.getParameter("name");
		
		if(valid.isValid(username,password)) {
			request.getSession().setAttribute("name", username);
			response.sendRedirect("/login.do");
		
			
		}
		else {
			request.setAttribute("errorMessage", "invalid Credential");
			request.getRequestDispatcher("WEB-INF/views/login.jsp");
		}
	}


}
