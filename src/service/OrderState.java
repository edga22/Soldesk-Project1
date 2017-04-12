package service;

import mgr.BookMgr;
import mgr.DeliveryMgr;
import mgr.OrderDatailMgr;
import domain.Book;
import domain.Member;
import domain.OrderDetail;
import domain.PurchaseOrder;

public class OrderState {
	String state;
	BookMgr bmgr;
	MemberService ms;
	DeliveryMgr dmgr;
	OrderDatailMgr odmgr;

	public OrderState() {
		bmgr = new BookMgr();
		ms = new MemberService();
		dmgr = new DeliveryMgr();
		odmgr = new OrderDatailMgr();
	}	
	
	public String change(int number){
		switch(number){
		case 1: state = "입금확인중"; break;
		case 2: state = "배송준비중"; break;
		case 3: state = "배송시작"; break;
		case 4: state = "배송완료"; break;
		case 5: state = "완료"; break;
		case 6: state = "교환접수"; break;
		case 7: state = "환불접수"; break;
		case 8: state = "환불완료"; 
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
	
	// 주문 세부사항 조회
	public OrderDetail[] getIdDetails(int PurchaseOrderID){
		return odmgr.getIdDetails(PurchaseOrderID);
	}
	
	public String getProduct(OrderDetail[] orderDetails){
		String product ="";
		int total = 0;
		for(OrderDetail od: orderDetails){
			product += "("+bmgr.getBook(od.getBookID()).getBookName()+" "+od.getAmount()+"권)";
			total += od.getAmount();
		}
		product += " 총 "+total+"권";
		return product;
	}

}
