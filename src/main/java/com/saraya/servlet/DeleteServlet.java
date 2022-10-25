package com.saraya.servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saraya.service.StudentService;

@WebServlet(urlPatterns="/delete.do")
public class DeleteServlet extends HttpServlet{
	
	StudentService student = new StudentService();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		student.deleteStudent(request.getParameter("student"));
		response.sendRedirect("/student.do");
	}


}
