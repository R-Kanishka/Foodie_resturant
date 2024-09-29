package dao;

import model.Clients;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ClientDao {

   
    public boolean registerClient(Clients client) {
        String sql = "INSERT INTO clients (client_name, client_address, client_email, pwd) VALUES (?, ?, ?, ?)";
        
        try (Connection connection = DbConnectionFactory.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            
            preparedStatement.setString(1, client.getClientName());
            preparedStatement.setString(2, client.getClientAddress());
            preparedStatement.setString(3, client.getClientEmail());
            preparedStatement.setString(4, client.getPwd());

            int result = preparedStatement.executeUpdate();
            return result > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return false;
    }

    
    public Clients validateClient(String email, String password) {
        String sql = "SELECT * FROM clients WHERE client_email = ? AND pwd = ?";
        
        try (Connection connection = DbConnectionFactory.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();
            
            if (resultSet.next()) {
                Clients client = new Clients();
                client.setClientName(resultSet.getString("client_name"));
                client.setClientAddress(resultSet.getString("client_address"));
                client.setClientEmail(resultSet.getString("client_email"));
                client.setPwd(resultSet.getString("pwd"));
                return client;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return null;
    }

   
    public boolean isAdmin(String email, String password) {
        String sql = "SELECT * FROM admin WHERE email = ? AND password = ?";
        
        try (Connection connection = DbConnectionFactory.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();
            return resultSet.next(); 

        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return false;
    }
}
