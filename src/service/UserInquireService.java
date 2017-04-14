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
	PayService ps;	
	UserInquireDao uid;
	OrderState os;
	GregorianCalendar now;
	MemberDao ms;
//	class에서 공통적으로 사용할 method를 정의한것.
//	method 기본 생성자로  class 초기화 작업을 선 진행!
	public UserInquireService() {			
		uid = new DbBasedUserInquireDao();
		ps = new PayService();
		os = new OrderState();
		now = new GregorianCalendar();
		ms = new DbBasedMemberDao();
	}
	
	public void setAsk(String uiqt, String uit, String uic)throws ParseException{	//도메인 초기화		
		UserInquire ui = new UserInquire();		
		/*java.sql.Date date = new java.sql.Date(ps.changeDate(String.format("%TY-%Tm-%Td",now, now, now)).getTime());*/
		java.sql.Date date = new java.sql.Date(ps.changeDate(String.format("%TY-%Tm-%Td",now, now, now)).getTime());
		
		ui.setqType(uiqt);
		ui.setqTitle(uit);
		ui.setqContent(uic);
		ui.setqDate(date);	
		
		uid.addUserInquire(ui);
	}
	
	public Member getMember(int memberID){
		return ms.getMember(memberID);
	}
}	
