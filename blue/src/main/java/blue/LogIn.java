package blue;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

public class LogIn {
	@WebServlet("/blue/LogIn")
	public class CountryList4Dao extends HttpServlet {
		private static final long serialVersionUID = 1L;

		@Resource(name = "jdbc/blue")
		private DataSource ds;

		@Override
		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			String user = request.getParameter("user");
			String password = request.getParameter("password");
			if (password != null && user != null) {

				DaoLogIn dao = new DaoLogIn(ds);
			/*	request.setAttribute("countries", dao.getCountriesForRegion(region));*/
				request.getRequestDispatcher("/es21/result.jsp").forward(request, response);
			}
		}

		@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			doGet(request, response);
		}
	}
}
