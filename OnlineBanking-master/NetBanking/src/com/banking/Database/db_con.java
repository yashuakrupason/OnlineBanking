package com.banking.Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class db_con {
	private Connection connection = null;

	public Connection getConnection() throws SQLException {

	    try {
	    	 Class.forName("com.mysql.cj.jdbc.Driver");
	         connection = DriverManager.getConnection("jdbc:mysql://localhost/bank?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
//	       String url ="jdbc:mysql://banksystem123.mysql.database.azure.com:3306/bank?useSSL=true&requireSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"; 
//	       Connection connection = DriverManager.getConnection(url, "Adminuser@banksystem123", "Vikas12345");
	    	 System.out.println("Connection successful");
	      
	    } catch (Exception e) {
	       System.err.println(e);
	    }
	    return connection;
	  }
}
