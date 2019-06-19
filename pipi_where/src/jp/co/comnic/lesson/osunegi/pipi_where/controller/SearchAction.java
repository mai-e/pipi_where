package jp.co.comnic.lesson.osunegi.pipi_where.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.comnic.lesson.osunegi.pipi_where.beans.Account;
import jp.co.comnic.lesson.osunegi.pipi_where.beans.Card;

public class SearchAction implements Action {

	@Override
	public Dispatcher execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cardName = request.getParameter("cardList");
		System.out.println(cardName);
		HttpSession session = request.getSession();
		Account account = (Account) session.getAttribute("account");
		ArrayList<String> usableStoreList = new ArrayList<String>();
		for(Card card:account.getCardList()) {
			if(cardName.equals(card.getName())) {
				usableStoreList = card.getUsableStoreList();
				break;
			}
		}
		session.setAttribute("usableStoreList", usableStoreList);
		
		
		 return new Forwarder(request, response, "map_search");
	}
}
