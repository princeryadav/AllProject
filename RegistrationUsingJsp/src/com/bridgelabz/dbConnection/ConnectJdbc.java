package com.bridgelabz.dbConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectJdbc {
	
public Connection connect;
	
	public ConnectJdbc() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/AddressBook","root","password");
			System.out.println("connected");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public Connection getConnect(){
		return connect;
	}

}
