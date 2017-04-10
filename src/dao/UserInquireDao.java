package dao;

import java.util.Date;

import domain.UserInquire;

public interface UserInquireDao {
	UserInquire[] getUserInquires();
	UserInquire getTitle(UserInquire inquireTitle);
	UserInquire getName(UserInquire inquireName);
	UserInquire getEmail(UserInquire inquireEmail);
	UserInquire getContent(UserInquire inquireContent);	
	Date getDate(UserInquire inquireDate);
}
