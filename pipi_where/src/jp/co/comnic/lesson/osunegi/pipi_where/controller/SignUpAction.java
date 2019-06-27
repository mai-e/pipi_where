package jp.co.comnic.lesson.osunegi.pipi_where.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.comnic.lesson.osunegi.pipi_where.beans.Account;
import jp.co.comnic.lesson.osunegi.pipi_where.dao.AccountDao;
import jp.co.comnic.lesson.osunegi.pipi_where.dao.DaoException;
import jp.co.comnic.lesson.osunegi.pipi_where.model.Request;

public class SignUpAction implements Action {
	private final static String BASE_URL = "http://13.114.185.17:5000/notify/";

	@Override
	public Dispatcher execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String userName = request.getParameter("userName");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		
		if (!password1.equals(password2)) {
			request.setAttribute("error", "Password doesn't much.");
			return new Forwarder(request, response, "sign-up");
		}
		
		try {
						
			Account account = AccountDao.findBy(userName);
			if (account.getUserName() != null) {
				request.setAttribute("error", "User already exists.");
				return new Forwarder(request, response, "sign-up");
			}
			
			account = new Account(userName, password1);
			AccountDao.save(account);
			int count = AccountDao.count();
			if(count > 0 && count%5 == 0) {
				Request.callGet(BASE_URL + count);
			}
			
		} catch (DaoException e) {
			throw new ServletException(e);
		}
		
		return new Redirector(request, response, "login");
	}

}
