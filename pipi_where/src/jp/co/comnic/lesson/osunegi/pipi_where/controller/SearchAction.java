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

public class SearchAction implements Action {

    String forwardPath = "map_result";

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
		System.out.println(cardName);
		HttpSession session = request.getSession();
		forwardPath = "map_result";
		
		Account account = (Account) session.getAttribute("account");
		ArrayList<String> usableStoreList = new ArrayList<String>();
		for(Card card:account.getCardList()) {
			if(cardName.equals(card.getName())) {
				usableStoreList = card.getUsableStoreList();
				break;
			}
		}
		session.setAttribute("usableStoreList", usableStoreList);
		
		
		return new Redirector(request, response, forwardPath);
	}
}
