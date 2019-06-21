package jp.co.comnic.lesson.osunegi.pipi_where.model;

import java.time.LocalDateTime;

import jp.co.comnic.lesson.osunegi.pipi_where.beans.Account;
import jp.co.comnic.lesson.osunegi.pipi_where.dao.AccountDao;
import jp.co.comnic.lesson.osunegi.pipi_where.dao.DaoException;

public class LoginAuthenticator {

    public static Account authenticate(String userName, String password) throws DaoException	 {
        
//    	Account account = new Account(userName, password);
    	Account account = AccountDao.findBy(userName, password);
//    	Account account = AccountDaoStub.findBy(userName, password);
        // 仮の分岐
        if (account.isAuthenticated()) 
        {
            account.setLastLoginTime(LocalDateTime.now());
        }
        
        return account;
    }
}