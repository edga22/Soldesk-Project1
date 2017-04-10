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
	
	public Basket[] getlist(){		
		return bookList.toArray(new Basket[bookList.size()]);
	}

	public void add(int bookID,int cnt){
		Book book=new Book();
		book=mgr.getBook(bookID);
		
		Basket basket=new Basket(book,cnt);
		bookList.add(basket);
	}
	
	public void remove(int bookID){
		Book book=new Book();
		book=mgr.getBook(bookID);
		
		for(Basket tmpBasket:bookList){
			if(tmpBasket.getBook()==book){
				Basket tmp=tmpBasket;
				bookList.remove(tmp); break;
			}
		}
	}
}
