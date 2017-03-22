package domain;

import java.sql.Date;

public class Event {
	private int eventID;
	private int giftID;
	private String eventName;
	private int discount;
	private Date startDate;
	private Date endDate;
	public int getEventID() {
		return eventID;
	}
	public void setEventID(int eventID) {
		this.eventID = eventID;
	}
	public int getGiftID() {
		return giftID;
	}
	public void setGiftID(int giftID) {
		this.giftID = giftID;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
}
