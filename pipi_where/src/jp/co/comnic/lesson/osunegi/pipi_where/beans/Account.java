package jp.co.comnic.lesson.osunegi.pipi_where.beans;

import java.time.LocalDateTime;
import java.util.ArrayList;

public class Account {

    private String userName;
    private String password;
    private ArrayList<Card> cardList;
    private LocalDateTime lastLoginTime;
    private boolean isAuthenticated = false;

    public Account() {
    	
    }
    
    public Account(String userName, String password) {
            this.userName = userName;
            this.password = password;
    }

	public ArrayList<Card> getCardList() {
		return cardList;
	}
	
	public void addCard(Card card) {
		cardList.add(card);
	}

	public void setCardList(ArrayList<Card> cardList) {
		this.cardList = cardList;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public LocalDateTime getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(LocalDateTime lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public boolean isAuthenticated() {
		return isAuthenticated;
	}

	public void setAuthenticated(boolean isAuthenticated) {
		this.isAuthenticated = isAuthenticated;
	}
}
