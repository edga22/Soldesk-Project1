package domain;

import java.sql.Date;

public class PurchaseOrder {
	private int purchaseOrderID;
	private int memberID;
	private int bookID;
	private int categoryID;
	private int eventID;
	private int amount;
	private Date purchaseDate;
	private int progress;
	public int getPurchaseOrderID() {
		return purchaseOrderID;
	}
	public void setPurchaseOrderID(int purchaseOrderID) {
		this.purchaseOrderID = purchaseOrderID;
	}
	public int getMemberID() {
		return memberID;
	}
	public void setMemberID(int memberID) {
		this.memberID = memberID;
	}
	public int getBookID() {
		return bookID;
	}
	public void setBookID(int bookID) {
		this.bookID = bookID;
	}
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public int getEventID() {
		return eventID;
	}
	public void setEventID(int eventID) {
		this.eventID = eventID;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Date getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
}
