package jp.co.comnic.lesson.osunegi.pipi_where.beans;


public class Store {
		private String storeName;
		private String storeJpn;
	
	public Store() {
		
	}
	
	public String getStoreJpn() {
		return storeJpn;
	}

	public void setStoreJpn(String storeJpn) {
		this.storeJpn = storeJpn;
	}

	public Store(String storeName) {
		this.storeName = storeName;
	}
	
	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

}
