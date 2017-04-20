package service;

import java.text.ParseException;
import java.util.GregorianCalendar;

import dao.DbBasedMemberDao;
import dao.DbBasedUserInquireDao;
import dao.MemberDao;
import dao.UserInquireDao;
import domain.Member;
import domain.UserInquire;

public class UserInquireService {
	PayService payService;	
	UserInquireDao userInquireDao;
	OrderState orderState;
	GregorianCalendar now;
	MemberDao memberDao;	
	UserInquire userInquire;
	
	String askType;		//질문유형
	
//	class에서 공통적으로 사용할 method를 정의한것.
//	method 기본 생성자로  class 초기화 작업을 선 진행!
	public UserInquireService() {			
		payService = new PayService();
		userInquireDao = new DbBasedUserInquireDao();		
		orderState = new OrderState();
		now = new GregorianCalendar();
		memberDao = new DbBasedMemberDao();
		userInquire = new UserInquire();
	}
	
	public UserInquire[] setTitle(int memberID){		
		return userInquireDao.getAskTitle(memberID);	//읽어들일 데이터를 인식할수 있도록 준비를 하자! (데이터 타입확인)		
	}
	
	/*public UserInquire getUserInquire(int userInquireID){
		return userInquireDao.getUserInquire(userInquireID);
	}*/
	
	public void setAsk(int memberID, int uiqt, String uit, String uic, int uiState)throws ParseException{	//도메인 초기화		
		java.sql.Date date = new java.sql.Date(payService.changeDate(String.format("%TY-%Tm-%Td",now, now, now)).getTime());
		
		switch(uiqt){
		case 1: askType = "국내도서"; break;
		case 2: askType = "외국도서"; break;
		case 3: askType = "전자책"; break;
		case 4: askType = "구매문의"; break;
		case 5: askType = "배송문의"; break;
		case 6: askType = "반품/교환문의"; break;
		case 7: askType = "기타";		
		}
		
		userInquire.setMemberID(memberID);
		userInquire.setType(uiqt);
		userInquire.setTitle(uit);
		userInquire.setContent(uic);
		userInquire.setDate(date);
		userInquire.setState(uiState);
		
		userInquireDao.addUserInquire(userInquire);
	}		
	
	public Member getMember(int memberID){
		return memberDao.getMember(memberID);
	}
	
	public int updateAsk(UserInquire userInquire){			
		return userInquireDao.updateUserInquire(userInquire);
	}
	
	public int delUserInquireAsk(int memberID){			
		return userInquireDao.delUserInquireAsk(memberID);
	}
	
}	
