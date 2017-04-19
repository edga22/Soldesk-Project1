package config;

import java.util.List;

import domain.UserInquire;

public interface UserInquireMapper {
	List<UserInquire> getUserInquires();
	UserInquire getUserInquire(int userInquireID);
	UserInquire[] getAskTitle(int memberID);
	int addUserInquire(UserInquire addUserInquire);		//select 가 아닌경우 입력여부 확인을 위해 int값으로 받는것.
	int updateUserInquire(UserInquire userInquireID);
	/*UserInquire addUserInquire(UserInquire addUserInquire); 일경우 실패한다.*/	 
	
}
