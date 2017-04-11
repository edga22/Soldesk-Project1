package domain;

import java.sql.Date;

public class PurchaseOrder {
	private int purchaseOrderID;
	private int memberID;
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
