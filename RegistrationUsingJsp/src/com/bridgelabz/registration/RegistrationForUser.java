package com.bridgelabz.registration;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.bridgelabz.dbConnection.ConnectJdbc;


@WebServlet("/RegistrationForUser")
public class RegistrationForUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out=response.getWriter();
		ConnectJdbc connectJdbc=new ConnectJdbc();
		Connection connection=(Connection)connectJdbc.getConnect();
		
		String query="Insert into RegistrationForUser(username,email,password,phone_no)values(?,?,?,?)";
		String uname=request.getParameter("username");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String phone_no=request.getParameter("phone_no");
		
	
	
		
		
		
		try {
	
			PreparedStatement pStatement=connection.prepareStatement(query);
			pStatement.setString(1, uname);
			pStatement.setString(2, email);
			pStatement.setString(3, password);
			pStatement.setString(4, phone_no);
		
			int rs=pStatement.executeUpdate();
			
			System.out.println(rs);
			
			if(rs==1){
				request.getRequestDispatcher("loginForUser.jsp").include(request, response);
				out.println("register succesfull");
			}else{
				
				request.getRequestDispatcher("registrationForUser.jsp");
				out.println("dublicates email");
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
	}

}
