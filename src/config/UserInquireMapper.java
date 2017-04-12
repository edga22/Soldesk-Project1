package config;

import java.util.Date;
import java.util.List;

import domain.UserInquire;

public interface UserInquireMapper {
	List<UserInquire> getUserInquires();
	UserInquire getEmail(UserInquire inquireEmail);
	UserInquire getTitle(UserInquire inquireTitle);
	UserInquire getName(UserInquire inquireName);	
	UserInquire getContent(UserInquire inquireContent);	
	Date getDate(UserInquire inquireDate);
}
