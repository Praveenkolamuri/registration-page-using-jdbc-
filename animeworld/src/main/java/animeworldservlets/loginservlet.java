package animeworldservlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import animeworlddbconnections.animeconnections;
import animeworldmodels.animemodels;
import animeworldservices.animeservices;

@WebServlet("/login")
public class loginservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        
        // Basic validation
        if (email == null || email.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            req.setAttribute("errorMessage", "Email and password are required");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
            return;
        }
        
        animeservices service = new animeservices(animeconnections.getconnection());
        animemodels user = service.authenticateUser(email, password);
        
        if (user != null) {
            // Create session for logged-in user
            HttpSession session = req.getSession();
            session.setAttribute("loggedInUser", user);
            session.setAttribute("userName", user.getName());
            session.setMaxInactiveInterval(30 * 60); // 30 minutes
            
            resp.sendRedirect("welcome.jsp");
        } else {
            req.setAttribute("errorMessage", "Invalid email or password");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}