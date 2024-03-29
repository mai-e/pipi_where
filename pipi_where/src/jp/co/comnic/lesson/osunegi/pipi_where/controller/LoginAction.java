package jp.co.comnic.lesson.osunegi.pipi_where.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.comnic.lesson.osunegi.pipi_where.beans.Account;
import jp.co.comnic.lesson.osunegi.pipi_where.beans.Card;
import jp.co.comnic.lesson.osunegi.pipi_where.dao.CardDao;
import jp.co.comnic.lesson.osunegi.pipi_where.dao.DaoException;
import jp.co.comnic.lesson.osunegi.pipi_where.model.LoginAuthenticator;


public class LoginAction implements Action {
    
    @Override
    public Dispatcher execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String forwardPath = "login";

        Account account;
        try {
            account = LoginAuthenticator.authenticate(userName, password);
                                    
            if (account.isAuthenticated()) {
                HttpSession session = request.getSession();
                session.invalidate();
                session = request.getSession();
                session.setAttribute("account", account);
                forwardPath = "map_search.jsp";
                
                ArrayList<Card> cardList = new ArrayList<Card>();
        		try {
        			cardList = CardDao.findAll();
        		} catch (DaoException e) {
        			// TODO Auto-generated catch block
        			e.printStackTrace();
        		}
        		session.setAttribute("cardList", cardList);
                
                return new Redirector(request, response, forwardPath);
                
            } else {
                request.setAttribute("error", "Invalid username or password.");
                return new Forwarder(request, response, forwardPath);
            }
        } catch (DaoException e) {
            throw new ServletException(e);
        }
    }
}