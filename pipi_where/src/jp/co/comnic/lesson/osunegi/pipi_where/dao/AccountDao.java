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
							account.setCardList(CardDao.findAll());
						}else {
							account.setCardList(UsableCardDao.findBy(account.getUserName()));
						}
					}
				}
			} catch (NamingException | SQLException e) {
				throw new DaoException(e);
			}
		return account;
	}
	
	public static int count() throws DaoException{
		String sql = "SELECT COUNT(*) FROM account";
		int count = 0;
		try (Connection conn = ConnectionFactory.getConnection();
				 PreparedStatement pstmt = conn.prepareStatement(sql)) {
			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					count = rs.getInt(1);
				}
			}
				return count;
				
			} catch (NamingException | SQLException e) {
				throw new DaoException(e);
			}
	}
	
	public static int save(Account account) throws DaoException {
		
		String sql = "INSERT INTO account(user_name, password) VALUES(?, ?)";
		
		try (Connection conn = ConnectionFactory.getConnection();
			 PreparedStatement pstmt = conn.prepareStatement(sql)) {
			
			pstmt.setString(1, account.getUserName());
			pstmt.setString(2, account.getPassword());
			
			return pstmt.executeUpdate();
			
		} catch (NamingException | SQLException e) {
			throw new DaoException(e);
		}
	}
}

