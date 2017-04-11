package service;

import java.util.GregorianCalendar;
import dao.DBBaseDeliveryDao;
import dao.DbBaseInvenDao;
import dao.DbBasedMemberDao;
import dao.DeliveryDao;
import dao.InvenDao;
import dao.MemberDao;
import domain.Book;
import domain.Member;
import domain.PurchaseOrder;
import domain.OrderDetail;

public class PayService {
	InvenDao bmgr;
	MemberDao ms;
	DeliveryDao dmgr;
	PurchaseOrder po;
	GregorianCalendar now;
	
	public PayService() {
		 this.bmgr = new DbBaseInvenDao();
		 ms = new DbBasedMemberDao();
		 dmgr = new DBBaseDeliveryDao();	
		 po = new PurchaseOrder();
		 now = new GregorianCalendar();
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
	public void setOrder(int memberID,String[] bookIDs,String[] cnt){
		OrderDetail od = new OrderDetail();
		//구매 정보 저장(구매번호 생성,purchaseOrderID)
		po.setMemberID(memberID);
		po.setProgress(1);
		dmgr.addOrder(po);
		//구매 세부정보 저장(OrderDetail)
		for(int i = 0;i<bookIDs.length;i++){
			od.setBookID(Integer.parseInt(bookIDs[i]));
			od.setAmount(Integer.parseInt(cnt[i]));
			od.setOrderDetailID(1);
			od.setPurchaseOrderID(1);
		}
	}
	
/*	// 오더 번호 가져오기
	public int getOrderID(int memberID, String bookID){
		GregorianCalendar now = new GregorianCalendar();
		String date = String.format("%TF", now);
		return 1;
	}*/
	
	// 오늘 날짜 출력
	public String getToday(){
		return String.format("%TF", now);
	}
	
}
