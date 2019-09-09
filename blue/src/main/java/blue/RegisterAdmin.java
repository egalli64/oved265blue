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

@WebServlet("/RegisterAdmin")

public class RegisterAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/blue")
	private DataSource ds;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		DaoRegisterAdmin dao = new DaoRegisterAdmin(ds);
		
		String name = request.getParameter("name");
		String last_name = request.getParameter("last_name");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		

		
		if (dao.checkRegisterAdmin(name, last_name, email, username, password)) {
			AdminBean admin = new AdminBean();
			
			admin.setUsername(name);
			admin.setUsername(last_name);
			admin.setPassword(email);
			admin.setUsername(username);
			admin.setPassword(password);
			
			HttpSession session = request.getSession(true);

			session.setAttribute("admin", admin);
			request.getRequestDispatcher("/newAdminRegistered.jsp").forward(request, response);

		} else {
			request.getRequestDispatcher("/invalidAdminRegistration.jsp").forward(request, response);
		}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}



