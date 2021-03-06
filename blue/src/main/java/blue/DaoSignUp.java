package blue;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.sql.DataSource;

public class DaoSignUp {

	private Connection conn;

	public DaoSignUp(DataSource ds) {
		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public boolean checkSignUpForm(String name, String last_name, String username, String password, String email, String licence, String card_number, String card_date, String card_cvv) {
		try {

			PreparedStatement query = null;

			String searchQuery = "insert into users (user_id, name, last_name, username, password, email, licence, card_number, card_date, card_cvv) "
					+ "values (my_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			query = conn.prepareStatement(searchQuery);
			query.setString(1, name);
			query.setString(2, last_name);
			query.setString(3, username);
			query.setString(4, password);
			query.setString(5, email);
			query.setString(6, licence);
			query.setString(7, card_number);
			query.setString(8, card_date);
			query.setString(9, card_cvv);
			

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
