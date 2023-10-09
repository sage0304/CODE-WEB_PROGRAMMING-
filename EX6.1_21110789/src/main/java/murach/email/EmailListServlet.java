package murach.email;

import java.io.*;
import java.util.Calendar;
import java.util.GregorianCalendar;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

import murach.business.User;

public class EmailListServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/index.jsp";

		// get current action
		String action = request.getParameter("action");
		if (action == null) {
			action = "join"; // default action
		}
		// perform action and set URL to appropriate page
		if (action.equals("join")) {
			url = "/index.jsp"; // the "join" page		 
		} else if (action.equals("add")) {
			// get parameters from the request
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String email = request.getParameter("email");
			String dateofbirth = request.getParameter("dateofbirth");
			String heard = request.getParameter("radio");
			String ann = request.getParameter("checkbox");
			String con = request.getParameter("typeofContact");
			// set User object in request object and set URL
			request.setAttribute("heard", heard);
			request.setAttribute("ann", ann);
			request.setAttribute("con", con);

			// store data in User object and save User object in db
			User user = new User(firstName, lastName, email, dateofbirth);	
			
			//set date to current year
	        GregorianCalendar currentDate = new GregorianCalendar();
			int currentYear = currentDate.get(Calendar.YEAR);
			
			// validate the parameters
			String message;
			if (firstName == null || lastName == null || email == null || dateofbirth == null || firstName.isEmpty()
					|| lastName.isEmpty() || email.isEmpty() || dateofbirth.isEmpty()) {
				message = "Please fill out all four text boxes.";
				url = "/index.jsp";
				request.setAttribute("currentYear", currentYear);
			} else {
				message = "You've done.";
				url = "/thanks.jsp";
				currentYear = currentDate.get(Calendar.DATE);
                request.setAttribute("currentYear", currentYear);
			}
			request.setAttribute("user", user);
			request.setAttribute("message", message);
		}		
		

		// forward request and response objects to specified URL
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
