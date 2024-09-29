package controller;

import dao.BookTableDao;
import model.BookTable;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/BookTableServlet")
public class BookTableServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private BookTableDao bookTableDao;

    public void init() {
        bookTableDao = new BookTableDao();
    }

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idParam = request.getParameter("id");

        if (idParam != null && !idParam.isEmpty()) {
            int id = Integer.parseInt(idParam);
            BookTable bookTable = bookTableDao.getBookingById(id); 

            if (bookTable != null) {
            
                request.setAttribute("booking", bookTable);
                request.getRequestDispatcher("table.reserverd.form.jsp").forward(request, response);
                return;
            }
        }
        response.sendRedirect("book.jsp?error=notfound");
    }

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        String idParam = request.getParameter("id");
        int id = (idParam != null && !idParam.isEmpty()) ? Integer.parseInt(idParam) : -1;

        String name = request.getParameter("name");
        String phoneNumber = request.getParameter("phone_number");
        String email = request.getParameter("email");
        String count = request.getParameter("count");
        String date = request.getParameter("date");

        BookTable bookTable = new BookTable(id, name, phoneNumber, email, count, date);

        boolean isSuccess;
        if (id == -1) {
            
            isSuccess = bookTableDao.insertBooking(bookTable);
        } else {
            
            isSuccess = bookTableDao.updateBooking(bookTable);
        }

        if (isSuccess) {
            response.sendRedirect("table.reserverd.form.jsp?success=true");
        } else {
            response.sendRedirect("table.reserverd.form.jsp?success=false");
        }
    }
}
