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
import javax.servlet.http.HttpSession;

import com.bridgelabz.dbConnection.ConnectJdbc;

@WebServlet("/RegistrationForEmp")
public class RegistrationForEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		ConnectJdbc connectJdbc=new ConnectJdbc();
		Connection connection=connectJdbc.getConnect();
		HttpSession session=request.getSession();
		
		PrintWriter out=response.getWriter();
		
		String emname=request.getParameter("empname");
		String add=request.getParameter("address");
		String coname=request.getParameter("comname");
		String agee=request.getParameter("age");
		String genders=request.getParameter("gender");
		String special=request.getParameter("specialization");
		String lang=request.getParameter("language");
		String salarys=request.getParameter("salary");
		String emaili=request.getParameter("email");
		int user_Id=(int) session.getAttribute("Id");
		String query="Insert into registrationFroEmp values(?,?,?,?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement pStatement=connection.prepareStatement(query);
			pStatement.setString(1, emname);
			pStatement.setString(2, add);
			pStatement.setString(3, coname);
			pStatement.setString(4, agee);
			pStatement.setString(5, genders);
			pStatement.setString(6, special);
			pStatement.setString(7, lang);
			pStatement.setString(8, salarys);
			pStatement.setString(9, emaili);
			pStatement.setInt(10, user_Id);
			
			int i=pStatement.executeUpdate();
			if(i>0)
			{
			response.sendRedirect("registrationForEmp.jsp");
			}
			else{
				//response.sendRedirect("loginForUser.jsp");
				request.getRequestDispatcher("registrationForEmp.jsp").include(request, response);
				out.println("Please fill all field");

			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
