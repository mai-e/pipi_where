package jp.co.comnic.lesson.osunegi.pipi_where.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import jp.co.comnic.lesson.osunegi.pipi_where.beans.Card;

public class UsableCardDao {

	public static ArrayList<Card> findBy(String userName) throws DaoException {
		String sql = "SELECT u.user_name, c.* FROM usable_card u, card c"
				+ " WHERE u.card_id = c.card_id"
				+ " AND u.user_name = ?";

		ArrayList <Card> cardList = new ArrayList<Card>();
		try (Connection conn = ConnectionFactory.getConnection();
				 PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, userName);
			String name;
			String cardName;
			double rate;
			ArrayList<String> usableStoreList;
			String url;
				try (ResultSet rs = pstmt.executeQuery()) {
					while (rs.next()) {
						name = rs.getString("card_name");
						cardName = rs.getString("card_name_wep");
						rate = rs.getDouble("rate_max");
						usableStoreList = UsableStoreDao.findBy(name);
						url = rs.getString("url");
						cardList.add(new Card(name, cardName, rate, usableStoreList, url));
					}
				}
			} catch (NamingException | SQLException e) {
				throw new DaoException(e);
			}
		return cardList;
	}
}
