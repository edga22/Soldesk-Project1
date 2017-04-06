package mgr;

import java.util.ArrayList;

import domain.Basket;
import domain.Book;

public class BasketMgr {
	BookMgr mgr;
	ArrayList<Basket> bookList;
	
	public BasketMgr(){
		mgr=new BookMgr();
		bookList=new ArrayList<Basket>();
	}
	
	public void add(int bookID,int cnt){
		Book book=new Book();
		book=mgr.getBook(bookID);
		
		Basket basket=new Basket(book,cnt);
		bookList.add(basket);
	}
	
	/*public Book getlist(){
		Book book=new Book();
		for(int i=0;i<bookList.size();i++){
			Basket basket=bookList.get(i);
			book=basket.getBook();
		}
		return book;
	}*/
}
