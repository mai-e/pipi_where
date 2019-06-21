package jp.co.comnic.lesson.osunegi.pipi_where.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

public class UsableCardDao {

	public static void findAll() throws DaoException {
		String sql = "SELECT * FROM usable_card";
		try (Connection conn = ConnectionFactory.getConnection();
				 PreparedStatement pstmt = conn.prepareStatement(sql)) {
				
				
				try (ResultSet rs = pstmt.executeQuery()) {
					while (rs.next()) {
					}
				}
			} catch (NamingException | SQLException e) {
				throw new DaoException(e);
			}
	}
}
