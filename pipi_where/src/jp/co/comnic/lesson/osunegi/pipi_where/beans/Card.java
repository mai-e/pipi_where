package jp.co.comnic.lesson.osunegi.pipi_where.beans;

import java.util.ArrayList;

public class Card {
	String name;						// カード名
	double rate;						// 還元率
	ArrayList<String> usableStoreList;	// 使える店のリスト
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
