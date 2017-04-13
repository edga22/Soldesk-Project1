package mgr;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;

import dao.DbBasedBestsellerDao;
import domain.Book;
import domain.OrderDetail;

public class BestsellerMgr {
	BookMgr mgr=new BookMgr();
	DbBasedBestsellerDao dao=new DbBasedBestsellerDao();
	
	public int[] getBookID(){
		OrderDetail[] order=dao.getBestID();
		int bookID[]=null;
		
		for(int i=0;i<order.length;i++){
			int bID=order[i].getBookID();
			bookID[i]=bID;
		}
		return bookID;
	}
	
	//index 순서 거꾸로 하기
	public void reverse(OrderDetail[] order){
		int left  = 0;
	    int right = order.length - 1;

	    while (left < right) {
	      OrderDetail temp = order[left];
	      order[left]  = order[right];
	      order[right] = temp;

	      left++; right--;
	    }
	}
	
	//오늘 날짜 (String type/yyyy-mm-dd)
	private String getCurrentDate(){
		Date dateNow=Calendar.getInstance(new SimpleTimeZone(0x1ee6280, "KST")).getTime();
		SimpleDateFormat fommatter = new SimpleDateFormat("yyyy/MM/dd",Locale.getDefault());
		return fommatter.format(dateNow);
	}
	
	//한달 전 날짜 (String type/yyyy-mm-dd)
	private String getMonthAgoDate(){
		Calendar cal = Calendar.getInstance(new SimpleTimeZone(0x1ee6390, "KST"));
		cal.add(Calendar.MONTH, -1);
		Date monthAgo = cal.getTime();
		SimpleDateFormat formmatter = new SimpleDateFormat("yyyy/MM/dd",Locale.getDefault());
		return formmatter.format(monthAgo);
	}
	
	//도서 한권의 출판일 (String type/yyyy-mm-dd)
	private String transFormate(java.sql.Date publishDate) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd");
		String bookDate=df.format(publishDate);
		return bookDate;
	}
	
	//신간 베스트셀러 뽑아내기
	public OrderDetail[] newBestseller(OrderDetail[] order){
		OrderDetail[] newOrder=new OrderDetail[order.length];
		String monthAgo=getMonthAgoDate();
		int j=0;
		
		for(int i=0;i<order.length;i++){
			Book book=mgr.getBook(order[i].getBookID());
			String bookDate=transFormate(book.getPublishDate());
			if(bookDate.compareTo(monthAgo)>=0){
				newOrder[j].setBookID(book.getBookID());
				j++;
			}
		}
		return newOrder;
	}
	
	//String으로 된 날짜 비교 (테스트 OK)
	public String test(){
		Book book=mgr.getBook(10);
		String monthago=getMonthAgoDate();
		String bookDate=transFormate(book.getPublishDate());
		String test=null;
		
		if(bookDate.compareTo(monthago)>=0){
			test="출간일이 03월 13일 이후야";
		}else{
			test="출간일이 03월 13일 이전이야";
		}
		return test;
	}
}
