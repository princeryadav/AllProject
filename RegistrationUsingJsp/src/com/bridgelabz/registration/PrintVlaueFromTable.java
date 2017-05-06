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


@WebServlet("/PrintVlaueFromTable")
public class PrintVlaueFromTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ConnectJdbc connectJdbc=new ConnectJdbc();
		Connection connection=connectJdbc.getConnect();
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		int user_Id=(int) session.getAttribute("Id");
		String query="Select * from registrationFroEmp where user_Id=?";
	
		
		out.println("<html><a href='registrationForEmp.jsp'>back</a></html> ");
		try {
			PreparedStatement pStatement=connection.prepareStatement(query);
			pStatement.setInt(1, user_Id);
			ResultSet rs=pStatement.executeQuery();
			out.println("<html><table border=2><tr>");
			out.println("<tr><td>Emp_Name</td><td>Address</td><td>Company_Name</td><td>Age</td><td>Gender</td><td>Specialisation</td><td>Language</td><td>Salary</td><td>Email_Id</td></tr>");
			while(rs.next()){
			out.println("<tr>"+"<td>"+rs.getString(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+rs.getString(3)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getString(5)+"</td>"
			+"<td>"+rs.getString(6)+"</td>"+"<td>"+rs.getString(7)+"</td>"+"<td>"+rs.getString(8)+"</td>"+"<td>"+rs.getString(9)+"</td>"+"</tr>");
			}
			out.println("</tr></table></html>"); 
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	

}
