package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {

	private static final String DB_URL = "jdbc:mysql://localhost:3306/foodiesdata";
	private static final String DB_USER = "root";
	private static final String DB_PASSWORD = "res22537";

	private static DbConnection instance;
	private Connection connection;

	private DbConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			this.connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	public static DbConnection getInstance() {
		if (instance == null) {
			synchronized (DbConnection.class) {
				if (instance == null) {
					instance = new DbConnection();
				}
			}
		}
		return instance;
	}

	public Connection getConnection() {
	    try {
	        if (this.connection == null || this.connection.isClosed()) {
	            this.connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return connection;
	}
}