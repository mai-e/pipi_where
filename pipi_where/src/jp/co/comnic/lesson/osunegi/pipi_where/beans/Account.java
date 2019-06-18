package jp.co.comnic.lesson.osunegi.pipi_where.beans;

import java.time.LocalDateTime;

public class Account {

    private String userName;
    private String password;
    private LocalDateTime lastLoginTime;
    private boolean isAuthenticated = false;

    public Account() {
    	
    }
    
    public Account(String userName, String password) {
            this.userName = userName;
            this.password = password;
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
