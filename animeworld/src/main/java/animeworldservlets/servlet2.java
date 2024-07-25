package animeworldservlets;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import animeworlddbconnections.animeconnections;
import animeworldservices.animeservices;
@WebServlet("/delete")
public class servlet2  extends HttpServlet{
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			int id = Integer.parseInt(req.getParameter("id"));
			animeservices ss = new animeservices(animeconnections.getconnection());
			boolean f = ss.deletebyId(id);
			if (f) {
				resp.sendRedirect("welcome.jsp");
			} else {
	            resp.sendRedirect("welcome.jsp");
			}
		}

	}
