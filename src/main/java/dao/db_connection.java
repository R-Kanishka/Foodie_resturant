package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class db_connection {
	
	private static final String URL = "jdbc:mysql://localhost:3306/foodiesdata";
    private static final String USER = "root";
    private static final String PASSWORD = "res22537";
    

    public static Connection getConnection() throws SQLException {
        Connection connection = null; 
        try {
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connected to the database.");
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }
        return connection; 
    }

}
