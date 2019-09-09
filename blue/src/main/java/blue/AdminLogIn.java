package blue;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

@WebServlet("/AdminLogIn")
public class AdminLogIn extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/blue")
	private DataSource ds;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		DaoAdmin dao_admin = new DaoAdmin(ds);

		String username = request.getParameter("user");
		String password = request.getParameter("password");
		if (dao_admin.checkAdminbyUsernameAndPassword(username, password)) {
			AdminBean administrator = new AdminBean();

			administrator.setUsername(username);
			administrator.setPassword(password);

			HttpSession session = request.getSession(true);

			session.setAttribute("administrator", administrator);
	        session.setMaxInactiveInterval(300); // 5 minuti
			
			request.getRequestDispatcher("/AdminLogged.jsp").forward(request, response);

		} else {
			request.getRequestDispatcher("/invalidAdminLogIn.jsp").forward(request, response);
		}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
