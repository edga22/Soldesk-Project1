package domain;

import java.sql.Date;


public class UserInquire {
	private int userInquireID;
	private int memberID;
	private int Type;
	private String Title;
	private String Content;
	private Date Date;
	private String Answer;
	private int State;
	
	
	
	public int getUserInquireID() {
		return userInquireID;
	}
	public void setUserInquireID(int userInquireID) {
		this.userInquireID = userInquireID;
	}
	public int getMemberID() {
		return memberID;
	}
	public void setMemberID(int memberID) {
		this.memberID = memberID;
	}
	public int getType() {
		return Type;
	}
	public void setType(int type) {
		Type = type;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public Date getDate() {
		return Date;
	}
	public void setDate(Date date) {
		Date = date;
	}
	public String getAnswer() {
		return Answer;
	}
	public void setAnswer(String answer) {
		Answer = answer;
	}
	public int getState() {
		return State;
	}
	public void setState(int state) {
		State = state;
	}
}
