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
	
	//오늘 날짜 (String type/yyyy-mm-dd)
	public String getCurrentDate(){
		Date dateNow=Calendar.getInstance(new SimpleTimeZone(0x1ee6280, "KST")).getTime();
		SimpleDateFormat fommatter = new SimpleDateFormat("yyyy/MM/dd",Locale.getDefault());
		return fommatter.format(dateNow);
	}
	
	//한달 전 날짜 (String type/yyyy-mm-dd)
	public String getMonthAgoDate(){
		Calendar cal = Calendar.getInstance(new SimpleTimeZone(0x1ee6390, "KST"));
		cal.add(Calendar.MONTH, -1);
		Date monthAgo = cal.getTime();
		SimpleDateFormat formmatter = new SimpleDateFormat("yyyy/MM/dd",Locale.getDefault());
		return formmatter.format(monthAgo);
	}
	
	//도서 한권의 출판일 (String type/yyyy-mm-dd)
	public String transFormate(java.sql.Date publishDate) {
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
}
