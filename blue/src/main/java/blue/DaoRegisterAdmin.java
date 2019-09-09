package blue;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.sql.DataSource;

public class DaoRegisterAdmin {
	private Connection conn;

	public DaoRegisterAdmin(DataSource ds) {
		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public boolean checkRegisterAdmin(String name, String last_name, String email, String username, String password) {
		try {

			PreparedStatement query = null;

			String searchQuery = "insert into administrators (administrator_id, name, last_name, email, username, password) "
					+ "values (my_seq2.nextval, ?, ?, ?, ?, ?)";

			query = conn.prepareStatement(searchQuery);
			
			query.setString(1, name);
			query.setString(2, last_name);
			query.setString(3, email);
			query.setString(4, username);
			query.setString(5, password);
		

			int i = query.executeUpdate();
			
			if (i == 1)
				return true;
			else
				return false;
			
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}
}


