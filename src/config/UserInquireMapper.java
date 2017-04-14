package config;

import java.util.List;

import domain.UserInquire;

public interface UserInquireMapper {
	List<UserInquire> getUserInquires();
	UserInquire getUserInquire();
	UserInquire addUserInquire(UserInquire addUserInquire);	
}
