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

	public User checkUserbyUsernameAndPassword(String username, String password) {
		try {
			User user = new User();
			PreparedStatement query = null;

			String searchQuery = "select * from users where username = ? and password = ?"; // ? --> parte variabile
																							// della stringa
			query = conn.prepareStatement(searchQuery);
			query.setString(1, username);
			query.setString(2, password);// 1 --> riferito al PRIMO punto di domanda, a cui assegno la variabile stringa
											//
			ResultSet rs = query.executeQuery(); // esegue la query

			rs.next();
			user.setUser_id(rs.getInt(1));
			user.setName(rs.getString(2));
			user.setLast_name(rs.getString(3));
			user.setUsername(rs.getString(4));
			user.setPassword(rs.getString(5));
			user.setEmail(rs.getString(6));
			user.setCard_number(rs.getString(7));
			user.setCard_date(rs.getString(8));
			user.setCard_cvv(rs.getString(9));
			user.setLicence(rs.getString(10));
	  
			if (rs.getInt(1) == 1)
				return user;

			else
				return null;

		} catch (

		SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}
}
