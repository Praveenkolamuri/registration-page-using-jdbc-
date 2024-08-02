package animeworldservlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import animeworlddbconnections.animeconnections;
import animeworldmodels.animemodels;

@WebServlet("/updateServlet")
public class updateservlet extends HttpServlet{
	    private static final long serialVersionUID = 1L;

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        int id = Integer.parseInt(request.getParameter("id"));
	        String name = request.getParameter("name");
	        String email = request.getParameter("email");
	        String password = request.getParameter("password");
	        String confirmpassword = request.getParameter("confirmpassword");

	        animemodels user = new animemodels();
	        user.setId(id);
	        user.setName(name);
	        user.setEmail(email);
	        user.setPassword(password);
	        user.setConfirmpassword(confirmpassword);

	        animeworldservices.animeservices an = new animeworldservices.animeservices(animeconnections.getconnection());
	        boolean success = an.updateanime(user);// Assuming `updateUser` method exists

	        if (success) {
	            response.sendRedirect("success.jsp"); // Redirect to a success page
	        } else {
	            response.sendRedirect("error.jsp"); // Redirect to an error page
	        }
	    }
	}