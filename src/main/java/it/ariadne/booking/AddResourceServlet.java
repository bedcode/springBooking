package it.ariadne.booking;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addresourceservlet")
public class AddResourceServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException  {
		String name = request.getParameter("name");
		String error = "";
		
		if (!name.startsWith("A")) {
			error = "nome errato";
		}
		request.getSession().setAttribute("error", error);
		request.getSession().setAttribute("name", name);
		response.sendRedirect("addResource");
	}
}
