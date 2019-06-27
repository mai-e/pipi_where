package jp.co.comnic.lesson.osunegi.pipi_where.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.comnic.lesson.osunegi.pipi_where.beans.Account;
import jp.co.comnic.lesson.osunegi.pipi_where.beans.Card;
import jp.co.comnic.lesson.osunegi.pipi_where.beans.Store;

public class SearchAction implements Action {

    String forwardPath = "map_search";

	@Override
	public Dispatcher execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cardName = request.getParameter("cardList");
		try {
		      byte[] byteData = cardName.getBytes("ISO_8859_1");
		      cardName = new String(byteData, "UTF-8");
		    }catch(UnsupportedEncodingException e){
		      System.out.println(e);
		    }
		HttpSession session = request.getSession();
		forwardPath = "map_search";
		
		Account account = (Account) session.getAttribute("account");
		ArrayList<Store> usableStoreList = new ArrayList<Store>();
		for(Card card:account.getCardList()) {
			if(cardName.equals(card.getName())) {
				usableStoreList = card.getUsableStoreList();
				break;
			}
		}
		session.setAttribute("usableStoreList", usableStoreList);
		session.setAttribute("selectedCard", cardName);
		
		
		return new Redirector(request, response, forwardPath);
	}
}
