package jp.co.comnic.lesson.osunegi.pipi_where.model;

import java.time.LocalDateTime;
import java.util.ArrayList;

import jp.co.comnic.lesson.osunegi.pipi_where.beans.Account;
import jp.co.comnic.lesson.osunegi.pipi_where.beans.Card;
import jp.co.comnic.lesson.osunegi.pipi_where.dao.DaoException;

public class LoginAuthenticator {

    public static Account authenticate(String userName, String password) throws DaoException	 {
        
    	Account account = new Account(userName, password);
//    	Account account = AccountDao.findBy(userName, password);
//    	Account account = AccountDaoStub.findBy(userName, password);
        // 仮の分岐
    	if(account.getUserName().equals("John") && account.getPassword().equals("admin")){
        	account.setAuthenticated(true);
        	ArrayList<String> list = new ArrayList<String>();
        	list.add("ローソン");
        	list.add("ファミマ");
        	account.addCard(new Card("楽天Edy",list));
        	account.addCard(new Card("LINEPay",list));
        }else if(account.getUserName().equals("Guest")){
        	account.setAuthenticated(true);
        	
        }
        if (account.isAuthenticated()) 
        {
            account.setLastLoginTime(LocalDateTime.now());
        }
        
        return account;
    }
}