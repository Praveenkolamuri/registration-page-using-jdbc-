package animeworldservlets;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import animeworlddbconnections.animeconnections;
import animeworldmodels.animemodels;
import animeworldservices.animeservices;

@WebServlet("/register")
public class animeservlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String confirmpassword = req.getParameter("confirmpassword");
		
		// Enhanced validation
		if (name == null || name.trim().isEmpty() || 
		    email == null || email.trim().isEmpty() || 
		    password == null || password.trim().isEmpty() || 
		    confirmpassword == null || confirmpassword.trim().isEmpty()) {
			req.setAttribute("errorMessage", "All fields are required");
			req.getRequestDispatcher("register.jsp").forward(req, resp);
			return;
		}
		
		// Check if passwords match
		if (!password.equals(confirmpassword)) {
			req.setAttribute("errorMessage", "Passwords do not match");
			req.getRequestDispatcher("register.jsp").forward(req, resp);
			return;
		}
		
		// Check password strength
		if (password.length() < 6) {
			req.setAttribute("errorMessage", "Password must be at least 6 characters long");
			req.getRequestDispatcher("register.jsp").forward(req, resp);
			return;
		}
		
		// Email format validation
		if (!email.matches("^[A-Za-z0-9+_.-]+@(.+)$")) {
			req.setAttribute("errorMessage", "Please enter a valid email address");
			req.getRequestDispatcher("register.jsp").forward(req, resp);
			return;
		}
		
		animeservices service = new animeservices(animeconnections.getconnection());
		
		// Check if email already exists
		if (service.emailExists(email)) {
			req.setAttribute("errorMessage", "Email already exists. Please use a different email.");
			req.getRequestDispatcher("register.jsp").forward(req, resp);
			return;
		}
		
		animemodels user = new animemodels(0, name.trim(), email.trim(), password, confirmpassword);
		boolean success = service.adding(user);
		
		if (success) {
			req.setAttribute("successMessage", "Registration successful! Please login.");
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		} else {
			req.setAttribute("errorMessage", "Registration failed. Please try again.");
			req.getRequestDispatcher("register.jsp").forward(req, resp);
		}
	}
}