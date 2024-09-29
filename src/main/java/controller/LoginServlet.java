package controller;

import dao.ClientDao;
import model.Clients;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ClientDao clientDao;

    public void init() {
        clientDao = new ClientDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        
        boolean isAdmin = clientDao.isAdmin(email, password);

        if (isAdmin) {
          
            HttpSession session = request.getSession();
            session.setAttribute("adminEmail", email);
            response.sendRedirect("dashboard.jsp");
        } else {
            
            Clients client = clientDao.validateClient(email, password);
            if (client != null) {
               
                HttpSession session = request.getSession();
                session.setAttribute("client", client);
                response.sendRedirect("index.jsp");
            } else {
                
                response.sendRedirect("login.jsp?error=true");
            }
        }
    }
}
