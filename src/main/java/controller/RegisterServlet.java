package controller;

import dao.ClientDao;
import model.Clients;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ClientDao clientDao; 

    public void init() {
        clientDao = new ClientDao(); 
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Clients client = new Clients(name, address, email, password);

        boolean isRegistered = clientDao.registerClient(client); 

        if (isRegistered) {
            response.sendRedirect("login.jsp?success=true"); 
        } else {
            response.sendRedirect("signup.jsp?error=true");
        }
    }
}
