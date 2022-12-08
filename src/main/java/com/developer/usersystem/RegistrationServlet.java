package com.developer.usersystem;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("name");
		String useremail=request.getParameter("email");
		String userpassword=request.getParameter("password");
		String confirmpwd=request.getParameter("confirmpwd");
		String usernumber=request.getParameter("phonenumber");
		RequestDispatcher dispatcher=null;
		Connection con=null;
		String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\."+
                "[a-zA-Z0-9_+&*-]+)*@" +
                "(?:[a-zA-Z0-9-]+\\.)+[a-z" +
                "A-Z]{2,7}$";
		Pattern pat=Pattern.compile(emailRegex);
		String numberRegex="^\\d{10}$";
		Pattern p=Pattern.compile(numberRegex);
		String Userregex = "^[A-Za-z]\\w{5,29}$";
		Pattern userreg=Pattern.compile(Userregex);
		
		
		if(username==null||username.equals("")||!userreg.matcher(username).matches()) {
			request.setAttribute("status", "invalidName") ;
			dispatcher = request.getRequestDispatcher("Registration.jsp");
			dispatcher.forward(request, response);}
		
		if(useremail==null||useremail.equals("")) {
			request.setAttribute("status", "invalidEmail") ;
			dispatcher = request.getRequestDispatcher("Registration.jsp");
			dispatcher.forward(request, response);
			}else if(!pat.matcher(useremail).matches()) {
				request.setAttribute("status", "invalidEmail") ;
				dispatcher = request.getRequestDispatcher("Registration.jsp");
				dispatcher.forward(request, response);
			}
		
		if(userpassword==null||userpassword.equals("")) {
			request.setAttribute("status", "invalidPassword") ;
			dispatcher = request.getRequestDispatcher("Registration.jsp");
			dispatcher.forward(request, response);
			}else if(!userpassword.equals(confirmpwd)) {
				request.setAttribute("status", "invalidConfirmpwd") ;
				dispatcher = request.getRequestDispatcher("Registration.jsp");
				dispatcher.forward(request, response);
			}
		
		if(usernumber==null||usernumber.equals("")) {
			request.setAttribute("status", "invalidPhonenumber") ;
			dispatcher = request.getRequestDispatcher("Registration.jsp");
			dispatcher.forward(request, response);
			}else if(usernumber.length()>10 || !p.matcher(usernumber).matches()){
				request.setAttribute("status", "invalidPhonenumber") ;
				dispatcher = request.getRequestDispatcher("Registration.jsp");
				dispatcher.forward(request, response);
				
			}
		
	
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306/usersregister?ussSSL=false","root","harshapriya");
			PreparedStatement pst=con.prepareStatement("insert into users(username,useremail,userpassword,usernumber) values(?,?,?,?)");
			pst.setString(1, username);
			pst.setString(2, useremail);
			pst.setString(3, userpassword);
			pst.setString(4, usernumber);
			
			int rowCount = pst.executeUpdate();
			dispatcher =request.getRequestDispatcher("Registration.jsp");
			
			if(rowCount>0) {
				request.setAttribute("status", "success");
				
				
			}else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
			
		}catch(Exception e){
			e.printStackTrace();
			
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
