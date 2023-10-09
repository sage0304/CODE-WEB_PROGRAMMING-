package murach.controllers;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import murach.business.User;

public class SurveyServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

			// get parameters from the request
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String email = request.getParameter("email");
			String dateofbirth = request.getParameter("dateofbirth");
			String heardFrom = request.getParameter("heardFrom");
			String ann = request.getParameter("ann");
			String contact = request.getParameter("contact");

			// process parameters
			if (heardFrom == null) {
				heardFrom = "NA";
			}
			if (ann == null) {
				ann = "No";
			} 
			else {
				ann = "Yes";
			}

			// store data in User object and save User object in db
			User user = new User(firstName, lastName, email, dateofbirth);
			user.setHeardFrom(heardFrom);
			user.setAnn(ann);
			user.setContact(contact);

			request.setAttribute("user", user);
		// forward request and response objects to specified URL
			String url = "/survey.jsp";
		getServletContext()
			.getRequestDispatcher(url)
			.forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}