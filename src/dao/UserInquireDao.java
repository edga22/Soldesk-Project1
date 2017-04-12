package dao;

import java.util.Date;

import domain.UserInquire;

public interface UserInquireDao {
	UserInquire[] getUserInquires();
	UserInquire getEmail(UserInquire inquireEmail);
	UserInquire getTitle(UserInquire inquireTitle);
	UserInquire getName(UserInquire inquireName);	
	UserInquire getContent(UserInquire inquireContent);	
	Date getDate(UserInquire inquireDate);
}
