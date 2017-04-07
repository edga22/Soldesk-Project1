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
	
	public void add(int bookID,int cnt){
		Book book=new Book();
		book=mgr.getBook(bookID);
		/*Basket tmpBasket=new Basket();
		for(int i=0;i<=bookList.size();i++){
			tmpBasket=bookList.get(i);
			if(book==tmpBasket.getBook()){
				break;
			}
		}*/
		Basket basket=new Basket(book,cnt);
		bookList.add(basket);
	}
	
	public void remove(int bookID){
		Book book=new Book();
		book=mgr.getBook(bookID);
		for(int i=0;i<=bookList.size();i++){
			Book tmpBook=bookList.get(i).getBook();
			if(tmpBook==book){
				bookList.remove(book);
			}
		}
	}
}
