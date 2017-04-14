package domain;

import java.sql.Date;


public class UserInquire {
	private int userInquireId;
	private String qType;
	private String qTitle;	
	private String qContent;
	private Date qDate;
	private String qAnswer;
	private String qState;
	
	public int getUserInquireId() {
		return userInquireId;
	}
	public void setUserInquireId(int userInquireId) {
		this.userInquireId = userInquireId;
	}
	public String getqType() {
		return qType;
	}
	public void setqType(String qType) {
		this.qType = qType;
	}
	public String getqTitle() {
		return qTitle;
	}
	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}
	public String getqContent() {
		return qContent;
	}
	public void setqContent(String qContent) {
		this.qContent = qContent;
	}
	public Date getqDate() {
		return qDate;
	}
	public void setqDate(Date qDate) {
		this.qDate = qDate;
	}
	public String getqAnswer() {
		return qAnswer;
	}
	public void setqAnswer(String qAnswer) {
		this.qAnswer = qAnswer;
	}
	public String getqState() {
		return qState;
	}
	public void setqState(String qState) {
		this.qState = qState;
	}	
}
