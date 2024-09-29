package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Product;

public class ProductDao {

    public boolean insertProduct(Product product) {
        String sql = "INSERT INTO products (item_name, price, image) VALUES (?, ?, ?)";
        try (Connection connection = DbConnectionFactory.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            
            preparedStatement.setString(1, product.getItemName());
            preparedStatement.setString(2, product.getPrice());
            preparedStatement.setString(3, product.getImage());

         
            int rowsInserted = preparedStatement.executeUpdate();
            return rowsInserted > 0; 

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false; 
    }
}
