package jp.co.comnic.lesson.osunegi.pipi_where.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.comnic.lesson.osunegi.pipi_where.beans.Card;
import jp.co.comnic.lesson.osunegi.pipi_where.dao.CardDao;
import jp.co.comnic.lesson.osunegi.pipi_where.dao.DaoException;
import jp.co.comnic.lesson.osunegi.pipi_where.model.RateComparator;
import jp.co.comnic.lesson.osunegi.pipi_where.model.VarietyComparator;

public class SortAction implements Action{

	@Override
	public Dispatcher execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String forwardPath = "card_list";
		 String variety = request.getParameter("variety");
		 String rate = request.getParameter("rate");
	
//			try {
//				if(variety!= null) {
//					variety = new String(variety.getBytes("ISO_8859_1"), "UTF-8");
//				}else if(rate != null) {
//					rate = new String(rate.getBytes("ISO_8859_1"), "UTF-8");
//				}
//			    }catch(UnsupportedEncodingException e){
//			      System.out.println(e);
//			    }
//			
		HttpSession session = request.getSession();
		ArrayList<Card> cardList = new ArrayList<Card>();
		try {
			cardList = CardDao.findAll();
		} catch (DaoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(variety!= null) {
			Collections.sort(cardList, new VarietyComparator());
		}else if(rate != null) {
			Collections.sort(cardList, new RateComparator());
		}
		 
		session.setAttribute("cardList", cardList);
		
		
		return  new Forwarder(request, response, forwardPath);
	}

}
