package service;
import domain.Book;
import domain.OrderDetail; 
import dao.BookDao;
import dao.DbBasedBookDao;
import dao.OrderDetailDao;
import dao.DbBasedOrderDetailDao;

	public class MypageService {
		BookDao bookService;
		OrderDetailDao orderDetailService;
	
	public MypageService() {
		this.bookService = new DbBasedBookDao();
		this.orderDetailService = new DbBasedOrderDetailDao();
		
	}
	public OrderDetail[] getIdDetails(int perchaseID) {
		return orderDetailService.getIdDetails(perchaseID);
	}
	public Book getBook(int bookID){
		return bookService.getBook(bookID);
	}
	public int getPoint(OrderDetail[] ods){
		int point = 0;
		for(OrderDetail od:ods){
			Book book = getBook(od.getBookID());
			point += (int)(book.getPrice()*od.getAmount()*0.1);
		}		
		return point;
	}
}

