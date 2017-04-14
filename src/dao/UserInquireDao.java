package dao;

import domain.UserInquire;

public interface UserInquireDao {
	UserInquire[] getUserInquires();						//1:1 문의 전체 읽어 오기
	UserInquire getUserInquire();							//1:1 문의 답변용. 각각 건별로 전달. 
	UserInquire addUserInquire(UserInquire addUserInquire);	// 1:1 문의 내용 전달용.
	
}
