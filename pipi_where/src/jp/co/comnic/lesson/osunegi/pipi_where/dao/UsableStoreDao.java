package jp.co.comnic.lesson.osunegi.pipi_where.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import jp.co.comnic.lesson.osunegi.pipi_where.beans.Store;

public class UsableStoreDao {

	public static ArrayList<Store> findBy(String name) throws DaoException{
		String sql = "SELECT c.card_name, s.store_jpn, s.store_name FROM card c, usable_store u, store s"
				+" WHERE c.card_name = u.card_name AND u.store_id = s.store_id"
				+" AND c.card_name = ?";
		ArrayList<Store> usableStoreList = new ArrayList<Store>();
		try (Connection conn = ConnectionFactory.getConnection();
				 PreparedStatement pstmt = conn.prepareStatement(sql)) {
				pstmt.setString(1, name);

				try (ResultSet rs = pstmt.executeQuery()) {
					while (rs.next()) {
						Store store = new Store();
						store.setStoreJpn(rs.getString("store_jpn"));
						store.setStoreName(rs.getString("store_name"));
						usableStoreList.add(store);
					}
				}
			} catch (NamingException | SQLException e) {
				throw new DaoException(e);
			}
		return usableStoreList;
	}
}
