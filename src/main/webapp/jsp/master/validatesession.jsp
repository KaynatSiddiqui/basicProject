<%@page import="com.zomant.util.AppConstants"%>
<%
	Object sessionUser = session.getAttribute("AdminType");
	if (sessionUser == null || !(sessionUser.toString().equalsIgnoreCase(sessionUser.toString())))

	{

		if (request.getRequestURI().indexOf("/student/") != -1) {

			response.sendRedirect(AppConstants.MASTER_URL);

		} else {
			response.sendRedirect(AppConstants.MASTER_URL + "jsp/master/login.jsp?status=2&redirect_url="
					+ request.getRequestURI());

		}

	} else {

		if (request.getRequestURI().indexOf("/student/") != -1
				&& sessionUser.toString().equalsIgnoreCase("student")) {

		} else if (!sessionUser.toString().equalsIgnoreCase("student"))

		{

			if (request.getRequestURI().indexOf("/student/") != -1) {

				response.sendRedirect(AppConstants.MASTER_URL + "?status=403");

			} else {

			}
		} else

		{

			response.sendRedirect(AppConstants.MASTER_URL + "jsp/master/login.jsp?status=403&redirect_url="
					+ request.getRequestURI());

		}

	}
%>
