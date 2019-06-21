package jp.co.comnic.lesson.osunegi.pipi_where.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;

import jp.co.comnic.lesson.osunegi.pipi_where.beans.Account;

public class AccountDao {
	public static Account findBy(String userName) throws DaoException{
		return findBy(userName, null);
	}
	
	public static Account findBy(String userName, String password)throws DaoException{
		Account account = new Account();
		String sql = "SELECT * FROM account WHERE user_name = ? ";
		if(password != null) {
			sql += " AND password = ?";
		}
		try (Connection conn = ConnectionFactory.getConnection();
				 PreparedStatement pstmt = conn.prepareStatement(sql)) {
				
				pstmt.setString(1, userName);
				if (password != null) {
					pstmt.setString(2, password);
				}
				try (ResultSet rs = pstmt.executeQuery()) {
					if (rs.next()) {
						account.setUserName(rs.getString("user_name"));
						account.setAuthenticated(true);
						if(account.getUserName().equals("Guest")){
							
						}
					}
				}
			} catch (NamingException | SQLException e) {
				throw new DaoException(e);
			}
		return account;
	}
}

