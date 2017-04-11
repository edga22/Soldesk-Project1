package service;

import mgr.BookMgr;
import service.MemberService;
import mgr.DeliveryMgr;
import domain.Book;
import domain.Member;
import domain.PurchaseOrder;

public class OrderState {
	String state;
	BookMgr bmgr;
	MemberService ms;
	DeliveryMgr dmgr;

	public OrderState() {
		bmgr = new BookMgr();
		ms = new MemberService();
		dmgr = new DeliveryMgr();
	}	
	
	public String change(int number){
		switch(number){
		case 1: state = "입금확인중"; break;
		case 2: state = "배송준비중"; break;
		case 3: state = "배송시작"; break;
		case 4: state = "배송완료"; break;
		case 5: state = "완료";
		}		
		return state;
	}
	
	// 유저 이름 검색
	public String getMemberName(int memberID){
		Member member = ms.getMember(memberID);
		return member.getName();
	}
	
	// 도서 이름 검색
	public String getBookName(int bookID){
		Book book = bmgr.getBook(bookID);
		return book.getBookName();
	}
	
	// 오더 내용 조회
	public PurchaseOrder getOrder(int OrderID){		
		return dmgr.getOrder(OrderID);
	}
	
	// 오더 내용 수정
	public int updateOrder(PurchaseOrder purchaseOrder){
		return dmgr.updateOrder(purchaseOrder);
	}

}
