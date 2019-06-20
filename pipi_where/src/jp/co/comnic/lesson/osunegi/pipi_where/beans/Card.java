package jp.co.comnic.lesson.osunegi.pipi_where.beans;

import java.util.ArrayList;

public class Card {
	private String name;						// カード名
	private String cardName;					// カード名ローマ字表記
	private double rate;						// 還元率
	private ArrayList<String> usableStoreList;	// 使える店のリスト
	
	public Card(String name) {
		this.name = name;
	}
	
	public Card(String name, ArrayList<String> usableStoreList) {
		this.name = name;
		this.usableStoreList = usableStoreList;
	}
	public Card(String name, String cardName, ArrayList<String> usableStoreList) {
		this.name = name;
		this.cardName = cardName;
		this.usableStoreList = usableStoreList;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	public ArrayList<String> getUsableStoreList() {
		return usableStoreList;
	}
	public void setUsableStoreList(ArrayList<String> usableStoreList) {
		this.usableStoreList = usableStoreList;
	}
	
	
	
}
