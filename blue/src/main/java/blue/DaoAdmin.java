package blue;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;
public class DaoAdmin {


		private Connection conn;

		public DaoAdmin(DataSource ds) {
			try {
				this.conn = ds.getConnection();
			} catch (SQLException se) {
				throw new IllegalStateException("Database issue " + se.getMessage());
			}
		}

		public boolean checkAdminbyUsernameAndPassword(String username, String password) {
			try {

				PreparedStatement query = null;

				String searchQuery = "select count(*) from administrators where username=? and password=?"; // ? --> parte variabile
																									// della stringa
				query = conn.prepareStatement(searchQuery);
				query.setString(1, username);
				query.setString(2, password);// 1 --> riferito al PRIMO punto di domanda, a cui assegno la variabile stringa
												
				ResultSet rs = query.executeQuery(); 

				rs.next();

				if (rs.getInt(1) == 1)
					return true;

				else
					return false;

			} catch (

			SQLException se) {
				throw new IllegalStateException("Database issue " + se.getMessage());
			}
		}
	}


