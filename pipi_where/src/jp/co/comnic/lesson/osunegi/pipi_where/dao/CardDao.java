package jp.co.comnic.lesson.osunegi.pipi_where.dao;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import jp.co.comnic.lesson.osunegi.pipi_where.beans.Card;
import jp.co.comnic.lesson.osunegi.pipi_where.beans.Store;	

public class CardDao {
	
	public static ArrayList<Card> findAll() throws DaoException{
		String sql = "SELECT * FROM card";
		ArrayList<Card> cardList = new ArrayList<Card>();
		try (Connection conn = ConnectionFactory.getConnection();
				 PreparedStatement pstmt = conn.prepareStatement(sql)) {		
		
				try (ResultSet rs = pstmt.executeQuery()) {
					while (rs.next()) {
						String name = rs.getString("card_name");
						String cardName = rs.getString("card_name_wep");
						double rate = rs.getDouble("rate_max");
						ArrayList<Store> usableStoreList = UsableStoreDao.findBy(name);
						String url = rs.getString("url");
						String charge = rs.getString("charge");
						cardList.add(new Card(name, cardName, rate, usableStoreList,url, charge));
					}
				}
			} catch (NamingException | SQLException e) {
				throw new DaoException(e);
			}
		return cardList;
	}
	
	public static int save(String userName, String cardName) throws DaoException {
	String sql = "INSERT INTO usable_card(user_name, card_id) VALUES(?, ?)";
	String cardSql = "SELECT c.card_id from card c where c.card_name = ?";
	int cardId;
		try (Connection conn = ConnectionFactory.getConnection();
			 PreparedStatement pstmt = conn.prepareStatement(cardSql)) {
			pstmt.setString(1, cardName);
			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					cardId = rs.getInt("card_id");
					try(PreparedStatement pstmt2 = conn.prepareStatement(sql)){
						pstmt2.setString(1,userName);
						pstmt2.setInt(2, cardId);
						return pstmt2.executeUpdate();
					}
				}
			}
			return 0;
		}catch(NamingException | SQLException e){
			throw new DaoException(e);
		}
			
	}
	
	public static void save(String userName, String[] cardList) throws DaoException {
		for(String cardName: cardList) {
		try {
		      byte[] byteData = cardName.getBytes("ISO_8859_1");
		      cardName = new String(byteData, "UTF-8");
		      save(userName, cardName);
		    }catch(UnsupportedEncodingException e){
		      System.out.println(e);
		    }
		}
	}
}
