package mgr;

import java.util.ArrayList;

import domain.Basket;
import domain.Book;

public class BasketMgr {
	BookMgr mgr=new BookMgr();
	
	public void add(int bookID,int cnt){
		Book book=new Book();
		ArrayList<Basket> bookList=new ArrayList<Basket>();
		
		book=mgr.getBook(bookID);
		
		Basket basket=new Basket(book,cnt);
		
		bookList.add(basket);
	}
}
