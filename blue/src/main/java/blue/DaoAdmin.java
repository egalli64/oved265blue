package blue;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
	
		public List<AdminBean> showAdmins() {
			List<AdminBean> adminList = new ArrayList<>();

			try {
				PreparedStatement showAdmin = null;
				String select = "SELECT * FROM administrators";
				showAdmin = conn.prepareStatement(select);
				ResultSet rs = showAdmin.executeQuery();
				while (rs.next()) {
					AdminBean admin = new AdminBean();
					
					admin.setAdministrator_id(rs.getString(1));
					admin.setName(rs.getString(2));
					admin.setLast_name(rs.getString(3));
					admin.setEmail(rs.getString(4));
					admin.setUsername(rs.getString(5));
					admin.setPassword(rs.getString(6));

				}
				return adminList;
			} catch (SQLException se) {
				throw new IllegalStateException("Database issue " + se.getMessage());
			}
		}
}


