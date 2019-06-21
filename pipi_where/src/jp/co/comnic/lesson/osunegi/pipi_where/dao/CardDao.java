package jp.co.comnic.lesson.osunegi.pipi_where.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import jp.co.comnic.lesson.osunegi.pipi_where.beans.Card;

public class CardDao {
	
	public static ArrayList<Card> findAll() throws DaoException{
		String sql = "SELECT * FROM card";
		ArrayList<Card> cardList = new ArrayList<Card>();
		try (Connection conn = ConnectionFactory.getConnection();
				 PreparedStatement pstmt = conn.prepareStatement(sql)) {
				
				
				try (ResultSet rs = pstmt.executeQuery()) {
					while (rs.next()) {
						
					}
				}
			} catch (NamingException | SQLException e) {
				throw new DaoException(e);
			}
		return null;
	}
}