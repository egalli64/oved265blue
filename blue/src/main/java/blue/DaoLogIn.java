package blue;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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

		public List<User> getCountriesForRegion(String regionId) {
			List<User> results = new ArrayList<>();

			try {
				PreparedStatement query = null;
				String s = "select country_id, country_name from regions natural join countries where region_id = ? "; 		// ? --> parte variabile della stringa
				query = conn.prepareStatement(s);  
				query.setLong(1, Long.parseLong(regionId));		 // 1 --> riferito al PRIMO punto di domanda, a cui assegno la variabile stringa regionId
				ResultSet rs = query.executeQuery();		 	// esegue la query
				
				while (rs.next()) {
					results.add(new User());
				}
			} catch (SQLException se) {
				throw new IllegalStateException("Database issue " + se.getMessage());
			}

			return results;
		}

	}


