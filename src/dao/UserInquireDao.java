package dao;

import domain.UserInquire;

public interface UserInquireDao {
	UserInquire[] getUserInquires();						// 1:1 문의 전체 읽어 오기
	UserInquire getUserInquire(int userInquireID);			// 1:1 문의 답변용. 한개의 정보
	UserInquire[] getAskTitle(int memberID);
	int addUserInquire(UserInquire addUserInquire);		// 1:1 문의 내용 전달용. int로 한이유는 값이 있는 유무를 확인시키기 위해서
	int updateUserInquire(UserInquire userInquire);
	int delUserInquireAsk(int memberID);
	/*int addUserInquire(UserInquire addUserInquire); 일경우 실패한다.*/
}
