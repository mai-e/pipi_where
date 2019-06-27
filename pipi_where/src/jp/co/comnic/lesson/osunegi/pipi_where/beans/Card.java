package jp.co.comnic.lesson.osunegi.pipi_where.beans;

import java.util.ArrayList;

public class Card {
	private String name;						// カード名
	private String cardName;					// カード名ローマ字表記
	private double rate;						// 還元率
	private ArrayList<Store> usableStoreList;   // 使える店のリスト
	private String url;
	private String charge;
	
	public Card() {
		
	}
	
	public Card(String name, String cardName, double rate, ArrayList<Store> usableStoreList, String url, String charge) {
		this.name = name;
		this.cardName = cardName;
		this.rate = rate;
		this.usableStoreList = usableStoreList;
		this.url = url;
		this.charge = charge;
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
	public void setUsableStoreList(ArrayList<Store> usableStoreList) {
		this.usableStoreList = usableStoreList;
	}

	public ArrayList<Store> getUsableStoreList() {
		return usableStoreList;
	}

	public void setRate(double rate) {
		this.rate = rate;
	}
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getCharge() {
		return charge;
	}
	public void setCharge(String charge) {
		this.charge = charge;
	}
	
	
}
