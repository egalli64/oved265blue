package blue;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

public class DaoLogIn {
	private Connection conn;

	public DaoLogIn(DataSource ds) {
		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public boolean checkUserbyUsernameAndPassword(String username, String password) {
		try {

			PreparedStatement query = null;

			String searchQuery = "select count(*) from users where username=? and password=?"; // ? --> parte variabile
																								// della stringa
			query = conn.prepareStatement(searchQuery);
			query.setString(1, username);
			query.setString(2, password);// 1 --> riferito al PRIMO punto di domanda, a cui assegno la variabile stringa
											//
			ResultSet rs = query.executeQuery(); // esegue la query

			rs.next();

			if (rs.getInt(1) == 1)
				return true;

			// if user exists set the isValid variable to true
			else
				return false;

		} catch (

		SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}
}
