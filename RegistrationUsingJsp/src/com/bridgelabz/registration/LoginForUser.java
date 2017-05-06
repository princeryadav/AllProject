package com.bridgelabz.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bridgelabz.dbConnection.ConnectJdbc;

@WebServlet("/LoginForUser")
public class LoginForUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter printWriter=response.getWriter();
		ConnectJdbc connectJdbc=new ConnectJdbc();
		Connection connection=(Connection)connectJdbc.getConnect();
		
		String query="SELECT * FROM RegistrationForUser WHERE email=? and password=?";
		String email_Id=request.getParameter("email");
		String password=request.getParameter("password");
		
		HttpSession session=request.getSession();
		
				
		try {
			PreparedStatement pStatement=connection.prepareStatement(query);
			pStatement.setString(1,email_Id);
			pStatement.setString(2, password);
			
			ResultSet resultSet=pStatement.executeQuery();
			if(resultSet.next()){
			int	user_Id=resultSet.getInt(4);
				session.setAttribute("Id",user_Id);
				response.sendRedirect("registrationForEmp.jsp");
				
			}else{
				request.getRequestDispatcher("loginForUser.jsp").include(request, response);
				printWriter.print("Sorry UserName or Password Error!");  
		          
			}
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
	}

}
