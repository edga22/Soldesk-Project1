package service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;

import mgr.OrderDatailMgr;
import dao.DBBaseDeliveryDao;
import dao.DbBaseInvenDao;
import dao.DbBasedMemberDao;
import dao.DeliveryDao;
import dao.InvenDao;
import dao.MemberDao;
import domain.Book;
import domain.Member;
import domain.OrderDetail;
import domain.PurchaseOrder;

public class PayService {
	InvenDao bmgr;
	MemberDao ms;
	DeliveryDao dmgr;
	PurchaseOrder po;
	GregorianCalendar now;
	OrderDatailMgr odmgr;
	
	public PayService() {
		 this.bmgr = new DbBaseInvenDao();
		 ms = new DbBasedMemberDao();
		 dmgr = new DBBaseDeliveryDao();	
		 po = new PurchaseOrder();
		 now = new GregorianCalendar();
		 odmgr = new OrderDatailMgr();
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
	public void setOrder(int memberID,String[] bookIDs,String[] cnts) throws ParseException{
		OrderDetail od = new OrderDetail();
		//구매 정보 저장(구매번호 생성,purchaseOrderID)
		po.setMemberID(memberID);
		java.sql.Date date = new java.sql.Date(changeDate(String.format("%TY-%Tm-%Td",now, now, now)).getTime());
		po.setPurchaseDate(date);//오늘날짜 저장
		po.setProgress(1);
		dmgr.addOrder(po);
		//구매 세부정보 저장(OrderDetail), 구매한 도서 종류 수량에 맞게 저장
		PurchaseOrder[] ods = dmgr.getOrders();
		int purchaseOrderID = ods[0].getPurchaseOrderID();
		for(int i = 0;i<bookIDs.length;i++){
			od.setBookID(Integer.parseInt(bookIDs[i]));
			od.setAmount(Integer.parseInt(cnts[i]));
			od.setPurchaseOrderID(purchaseOrderID);
			odmgr.addDetail(od); // 판매 내용 내용저장
			//재고에서 판매수량만큼 삭제
			Book book = getBook(bookIDs[i]); // 도서 생성
			book.setStock(book.getStock()-1); // 재고에서 1권 삭제	
			bmgr.updateBook(book); // 삭제하고 남은 수량 DB에 저장
		}
	}
	
	// 오더 번호 가져오기(가장 최근번호, 방금 구입한 번호)
	public int getOrderID(){
		PurchaseOrder[] ods = dmgr.getOrders();		
		return ods[0].getPurchaseOrderID();
	}
	
	// 오늘 날짜 출력
	public String getToday(){
		return String.format("%TF", now);
	}
	
	// 오늘날짜 출력 DB용
	public Date changeDate(String date) throws ParseException{	
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date newDate = format.parse(date);
		return newDate;
	}
	
}
