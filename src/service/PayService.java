package service;

import dao.DBBaseDeliveryDao;
import dao.DeliveryDao;
import dao.DbBaseInvenDao;
import dao.InvenDao;
import dao.DbBasedMemberDao;
import dao.MemberDao;
import domain.Book;
import domain.Member;
import domain.PurchaseOrder;

public class PayService {
	InvenDao bmgr;
	MemberDao ms;
	DeliveryDao dmgr;
	PurchaseOrder resist;
	
	public PayService() {
		InvenDao bmgr = new DbBaseInvenDao();
		MemberDao ms = new DbBasedMemberDao();
		DeliveryDao dmgr = new DBBaseDeliveryDao();	
		PurchaseOrder po = new PurchaseOrder();
	}

	//회원정보 불러오기
	public Member getMember(int memberID){	
		return ms.getMember(memberID);
	}
	
	//책정보 가져오기
	public Book getBook(String bookID){
		return bmgr.getBook(Integer.parseInt(bookID));
	}
	
	// 포인트 계산
	public int getPoint(String bookID,String cnt){
		Book book = bmgr.getBook(Integer.parseInt(bookID));
		int count= Integer.parseInt(cnt);
		int point = (int)(book.getPrice()*0.1)*count;
		return point;
	}
	
	public void setPoint(int memberID, int point){
		Member member = ms.getMember(memberID);		
		member.setBonusPoint(point);
	}
	
	// 북 원래가격 책정
	public int getOverPrice(String bookID){
		Book book = bmgr.getBook(Integer.parseInt(bookID));
		int price = (int)(book.getPrice()*1.1);	
		return price;
	}
	
	// 구매 정보 저장
	public void setOrder(int memberID,String bookID,String cnt){
		resist.setMemberID(memberID);
		resist.setBookID(Integer.parseInt(bookID));
		resist.setAmount(Integer.parseInt(cnt));
		resist.setProgress(1);
	
		dmgr.addOrder(resist);
	}
	
}
