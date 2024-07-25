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
	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			String confirmpassword = req.getParameter("confirmpassword");
//			long phonenumber = Long.parseLong(req.getParameter("phonenumber"));
			animemodels s = new animemodels(0, name, email, password, confirmpassword);
			animeservices ss = new animeservices(animeconnections.getconnection());
			
			 boolean f = ss.adding(s);
			
			if (f) {
				resp.sendRedirect("welcome.jsp");
				
				
			} else {
	            resp.sendRedirect("error.jsp");
			}
	}
}