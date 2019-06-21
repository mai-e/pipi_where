package jp.co.comnic.lesson.osunegi.pipi_where.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

public class StoreDao {
	public static ArrayList<String> findAll() throws DaoException {
		String sql = "SELECT * FROM store";
		ArrayList<String> storeList = new ArrayList<String>();
		try (Connection conn = ConnectionFactory.getConnection();
				 PreparedStatement pstmt = conn.prepareStatement(sql)) {
				
				
				try (ResultSet rs = pstmt.executeQuery()) {
					while (rs.next()) {
						storeList.add(rs.getString("store_jpn"));
					}
				}
			} catch (NamingException | SQLException e) {
				throw new DaoException(e);
			}
		return storeList;
	}
}
