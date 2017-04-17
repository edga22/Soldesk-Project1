package config;

import java.util.List;

import domain.UserInquire;

public interface UserInquireMapper {
	List<UserInquire> getUserInquires();
	UserInquire getUserInquire();
	int addUserInquire(UserInquire addUserInquire);
	//select 가 아닌경우 입력여부 확인용만????????
	/*UserInquire addUserInquire(UserInquire addUserInquire);*/	
}
