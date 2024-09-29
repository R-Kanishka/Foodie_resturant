package dao;

import model.BookTable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookTableDao {
    
    
    public boolean insertBooking(BookTable bookTable) {
        String sql = "INSERT INTO book_table (name, phone_number, email, count, date) VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = DbConnectionFactory.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, bookTable.getName());
            preparedStatement.setString(2, bookTable.getPhoneNumber());
            preparedStatement.setString(3, bookTable.getEmail());
            preparedStatement.setString(4, bookTable.getCount());
            preparedStatement.setString(5, bookTable.getDate());

            int result = preparedStatement.executeUpdate();
            return result > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    
    
    public List<BookTable> getAllBookings() {
        List<BookTable> bookings = new ArrayList<>();
        String sql = "SELECT * FROM book_table";

        try (Connection connection = DbConnectionFactory.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                BookTable booking = new BookTable();
                booking.setId(resultSet.getInt("id"));
                booking.setName(resultSet.getString("name"));
                booking.setPhoneNumber(resultSet.getString("phone_number"));
                booking.setEmail(resultSet.getString("email"));
                booking.setCount(resultSet.getString("count"));
                booking.setDate(resultSet.getString("date"));

                bookings.add(booking);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookings;
    }
    
   
    public BookTable getBookingById(int id) {
        String sql = "SELECT * FROM book_table WHERE id = ?";
        BookTable booking = null;

        try (Connection connection = DbConnectionFactory.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                booking = new BookTable();
                booking.setId(resultSet.getInt("id"));
                booking.setName(resultSet.getString("name"));
                booking.setPhoneNumber(resultSet.getString("phone_number"));
                booking.setEmail(resultSet.getString("email"));
                booking.setCount(resultSet.getString("count"));
                booking.setDate(resultSet.getString("date"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return booking;
    }

   
    public boolean updateBooking(BookTable bookTable) {
        String sql = "UPDATE book_table SET name = ?, phone_number = ?, email = ?, count = ?, date = ? WHERE id = ?";

        try (Connection connection = DbConnectionFactory.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setString(1, bookTable.getName());
            preparedStatement.setString(2, bookTable.getPhoneNumber());
            preparedStatement.setString(3, bookTable.getEmail());
            preparedStatement.setString(4, bookTable.getCount());
            preparedStatement.setString(5, bookTable.getDate());
            preparedStatement.setInt(6, bookTable.getId());

            int result = preparedStatement.executeUpdate();
            return result > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
