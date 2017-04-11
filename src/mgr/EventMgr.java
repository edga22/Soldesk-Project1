package mgr;

import java.sql.Date;

import dao.BookDao;
import dao.DbBasedBookDao;
import dao.DbBasedEventDao;
import dao.EventDao;
import domain.Book;
import domain.Event;

public class EventMgr {
	EventDao eventdao ;
	BookDao bookdao;
	
	public EventMgr(){
		eventdao = new DbBasedEventDao();
		bookdao = new DbBasedBookDao();
	}
	
	// 책 할인율을 실제 비율로 반환합니다
	// param : 책 ID
	// return : 할인율 % * 0.01
	public double getDiscountMult(int bookID){
		int eventID = bookdao.getBook(bookID).getEventID();
		if(eventID == 0) return 0;
		else return (double)(eventdao.getEvent(eventID).getDiscount() * 0.01);		
	}
	
	// 책 사은품 ID 반환
	// param : 책 ID
	// return : 사은품 ID
	public int getGiftID(int bookID){
		int eventID = bookdao.getBook(bookID).getEventID();
		if(eventID == 0) return 0;
		else return eventdao.getEvent(eventID).getGiftID(); 
	}	
	
	public int modEvent(int bookID, String eventname, int discount, int giftID, Date startdate, Date enddate){
		Book target = bookdao.getBook(bookID);
		Event event = null;
		boolean flag = true;
		int eventid = eventdao.getIdEvent(eventname);			
		
		if(target.getEventID() == 0 && eventid == 0){
			event = new Event();				
		}
		else {
			event = eventdao.getEvent(eventid);			
		}

		event.setEventName(eventname);
		event.setDiscount(discount);
		event.setGiftID(giftID);
		event.setStartDate(startdate);
		event.setEndDate(enddate);		
		
		if(event.getEventID() == 0){
			if(eventdao.addEvent(event)!=1) flag = false;	
			target.setEventID(eventdao.getIdEvent(eventname));
		}		
		else {
			if(eventdao.updateEvent(event)!=1)flag = false;
			target.setEventID(event.getEventID());
		}		
		
		if(bookdao.updateBook(target)!=1) flag = false;		
		
		return flag? 1 : 0;
	}
	
	public EventDao getDao(){
		return eventdao;
	}
	

}
