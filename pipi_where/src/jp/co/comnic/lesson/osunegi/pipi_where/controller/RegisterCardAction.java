package jp.co.comnic.lesson.osunegi.pipi_where.controller;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.comnic.lesson.osunegi.pipi_where.beans.Account;
import jp.co.comnic.lesson.osunegi.pipi_where.dao.AccountDao;
import jp.co.comnic.lesson.osunegi.pipi_where.dao.CardDao;
import jp.co.comnic.lesson.osunegi.pipi_where.dao.DaoException;

public class RegisterCardAction implements Action{

	@Override
	public Dispatcher execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String[] check = request.getParameterValues("checkbox");
		HttpSession session = request.getSession();
		Account account = (Account) session.getAttribute("account");
		String userName = account.getUserName();
		LocalDateTime lastLoginTime = account.getLastLoginTime();
		try {
			CardDao.save(userName, check);
			account = AccountDao.findBy(account.getUserName(), account.getPassword());
			account.setLastLoginTime(lastLoginTime);
		} catch (DaoException e) {
			e.printStackTrace();
		}
		session.setAttribute("account", account);
		return new Forwarder(request, response, "mypage");
	}

}
