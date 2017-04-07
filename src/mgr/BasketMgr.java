package mgr;

import java.util.ArrayList;

import domain.Basket;
import domain.Book;

public class BasketMgr {
	BookMgr mgr;
	static ArrayList<Basket> bookList=new ArrayList<Basket>();
	
	public BasketMgr(){
		mgr=new BookMgr();
	}
	
	public Basket[] getlist(){		
		return bookList.toArray(new Basket[bookList.size()]);
	}
	
	public ArrayList<Basket> getArrayList(){
		return bookList;
	}
	
	public void add(int bookID,int cnt){
		Book book=new Book();
		book=mgr.getBook(bookID);
		
		Basket basket=new Basket(book,cnt);
		bookList.add(basket);
	}
	
	public ArrayList<Basket> remove(int bookID){
		Book book=new Book();
		book=mgr.getBook(bookID);
		bookList.remove(book);
		
		return bookList;
	}
}
