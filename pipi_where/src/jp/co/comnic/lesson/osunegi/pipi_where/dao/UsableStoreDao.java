package jp.co.comnic.lesson.osunegi.pipi_where.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

public class UsableStoreDao {

	public static ArrayList<String> findBy(String name) throws DaoException{
		String sql = "SELECT c.card_name, s.store_jpn FROM card c, usable_store u, store s"
				+" WHERE c.card_name = u.card_name AND u.store_id = s.store_id"
				+" AND c.card_name = ?";
		ArrayList<String> usableStoreList = new ArrayList<String>();
		try (Connection conn = ConnectionFactory.getConnection();
				 PreparedStatement pstmt = conn.prepareStatement(sql)) {
				pstmt.setString(1, name);
				
				try (ResultSet rs = pstmt.executeQuery()) {
					while (rs.next()) {
						usableStoreList.add(rs.getString("store_jpn"));
					}
				}
			} catch (NamingException | SQLException e) {
				throw new DaoException(e);
			}
		return usableStoreList;
	}
}
