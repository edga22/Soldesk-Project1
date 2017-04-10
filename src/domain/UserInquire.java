package domain;

import java.util.Date;

public class UserInquire {
	private String inquireTitle;
	private String inquireName;
	private String inquireEmail;
	private String inquireContent;
	private Date inquireDate;
	
	public Date getInquireDate() {
		return inquireDate;
	}
	public void setInquireDate(Date inquireDate) {
		this.inquireDate = inquireDate;
	}
	public String getInquireTitle() {
		return inquireTitle;
	}
	public void setInquireTitle(String inquireTitle) {
		this.inquireTitle = inquireTitle;
	}
	public String getInquireName() {
		return inquireName;
	}
	public void setInquireName(String inquireName) {
		this.inquireName = inquireName;
	}
	public String getInquireEmail() {
		return inquireEmail;
	}
	public void setInquireEmail(String inquireEmail) {
		this.inquireEmail = inquireEmail;
	}
	public String getInquireContent() {
		return inquireContent;
	}
	public void setInquireContent(String inquireContent) {
		this.inquireContent = inquireContent;
	}
}
