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
				try (ResultSet rs = pstmt.executeQuery()) {
					while (rs.next()) {
						String name = rs.getString("card_name");
						String cardName = rs.getString("card_name_wep");
						double rate = rs.getDouble("rate_max");
						ArrayList<String> usableStoreList = UsableStoreDao.findBy(name);
						String url = rs.getString("url");
						String charge = rs.getString("charge");
						cardList.add(new Card(name, cardName, rate, usableStoreList, url, charge));
					}
				}
			} catch (NamingException | SQLException e) {
				throw new DaoException(e);
			}
		return cardList;
	}
}
