package com.developer.usersystem;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String useremail=request.getParameter("email");
		String userpassword = request.getParameter("password");
		HttpSession session=request.getSession();
		RequestDispatcher dispatcher =null;
		
		if(useremail==null||useremail.equals("")) {
			request.setAttribute("status", "invalidEmail") ;
			dispatcher = request.getRequestDispatcher("Login.jsp");
			dispatcher.forward(request, response);
		}
		if(userpassword==null||userpassword.equals("")) {
			request.setAttribute("status", "invalidUserpasword") ;
			dispatcher = request.getRequestDispatcher("Login.jsp");
			dispatcher.forward(request, response);
		}
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/usersregister?ussSSL=false","root","harshapriya");
			PreparedStatement pst=con.prepareStatement("select * from users where useremail=? and userpassword=?");
			pst.setString(1, useremail);
			pst.setString(2, userpassword);
			
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("name", rs.getString("username")) ;
				dispatcher = request.getRequestDispatcher("index.jsp");
				
			}else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("Login.jsp");
			}
			dispatcher.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
