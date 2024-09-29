package dao;

import java.sql.Connection;


public class DbConnectionFactory {
	
	 public static Connection getConnection() {
	        return DbConnection.getInstance().getConnection();
	    }

}