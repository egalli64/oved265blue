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

@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
		private static final long serialVersionUID = 1L;

		@Resource(name = "jdbc/blue")
		private DataSource ds;

		@Override
		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			DaoSignUp dao = new DaoSignUp(ds);

			String name = request.getParameter("name");
			String last_name = request.getParameter("last_name");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
//			String birth = request.getParameter("birth");
			String card_number = request.getParameter("card_number");
			String card_date = request.getParameter("card_date");
			String card_cvv = request.getParameter("card_cvv");
			String licence = request.getParameter("licence");
			
			if (dao.checkSignUpForm(name, last_name, username, password, email, licence, card_number, card_date, card_cvv)) {
				User user = new User();

				user.setName(name);
				user.setLast_name(last_name);
				user.setUsername(username);
				user.setPassword(password);
				user.setEmail(email);
				user.setCard_number(card_number);
				user.setCard_date(card_date);
				user.setCard_cvv(card_cvv);
				user.setLicence(licence);


				HttpSession session = request.getSession(true);

				session.setAttribute("user", user);
				request.getRequestDispatcher("userSignUp.jsp").forward(request, response);

			} else {
				request.getRequestDispatcher("invalidSignUp.jsp").forward(request, response);
			}

		}

		@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			doGet(request, response);
		}
	}

