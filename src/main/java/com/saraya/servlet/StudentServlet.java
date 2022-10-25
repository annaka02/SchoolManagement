package com.saraya.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saraya.model.Students;
import com.saraya.service.StudentService;



@WebServlet(urlPatterns="/student.do")
public class StudentServlet extends HttpServlet{
	StudentService service = new StudentService();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		 Students etudiant = new Students(0, null, null, null, null, null, null);
		request.setAttribute("student", service.retrieveAllStudents());
		 request.getRequestDispatcher("WEB-INF/views/student.jsp").forward(request, response);
	 }
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		 String etudiant = request.getParameter("student");
		 service.addStudent(etudiant, etudiant, etudiant, etudiant, etudiant, etudiant);
		 response.sendRedirect("/student.do");
	}

}
