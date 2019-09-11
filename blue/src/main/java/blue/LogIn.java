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

@WebServlet("/LogIn")
public class LogIn extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/blue")
	private DataSource ds;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		DaoLogIn dao = new DaoLogIn(ds);

		String username = request.getParameter("user");
		String password = request.getParameter("password");

		User profile = dao.checkUserbyUsernameAndPassword(username, password);
		if ( profile != null) {

			HttpSession session = request.getSession(true);
			session.setAttribute("user", profile);
	        session.setMaxInactiveInterval(300); // 5 minuti
	        
			request.getRequestDispatcher("/userLogged.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/invalidLogin.jsp").forward(request, response);
		}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
