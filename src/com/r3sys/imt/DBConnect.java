package com.r3sys.imt;


	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.SQLException;

	public class DBConnect {
	    
	    public static Connection connect() {
	        Connection con = null;
	        try {
	            // Load the MySQL JDBC driver
	            Class.forName("com.mysql.jdbc.Driver");
	            
	            // Establish the database connection
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventoryDB","root","");
	        } catch (ClassNotFoundException | SQLException e) {
	            e.printStackTrace();
	        }
	        return con;
	    }
}
