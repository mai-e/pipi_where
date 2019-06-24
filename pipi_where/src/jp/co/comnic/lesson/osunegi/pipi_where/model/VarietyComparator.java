package jp.co.comnic.lesson.osunegi.pipi_where.model;

import java.util.Comparator;

import jp.co.comnic.lesson.osunegi.pipi_where.beans.Card;

public class VarietyComparator implements Comparator<Card>{

	@Override
	public int compare(Card o1, Card o2) {
		// TODO Auto-generated method stub
		return o1.getUsableStoreList().size() < o2.getUsableStoreList().size() ? -1 : 1;
	}

}