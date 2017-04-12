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

	public int bookIdSc(int idx){
        int bookID = -1;
        for(int i=0;i<bookList.size();i++){
            Basket bk = bookList.get(i);
            if(idx == bk.getBook().getBookID()) {
                bookID = i;
                break;
            }
        }
        return bookID;
    }
	
	public void add(int bookID,int cnt){
		  Book book=new Book();
	      book=mgr.getBook(bookID);
	      int books = bookIdSc(bookID);

	      if(books != -1){
	        Basket b = bookList.get(books);
	        Basket copy = b;
	        int getcnt = copy.getCnt();

	        if(getcnt != 0){
	             copy.setBook(book);
	             copy.setCnt(getcnt+1);
	             bookList.set(books, copy);
	            }
	        }else{
	        Basket basket=new Basket(book,cnt);
	        bookList.add(basket);
	     }
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
	
	public void update(int bookID,int cnt){
		Book book=new Book();
		book=mgr.getBook(bookID);
		
		for(Basket tmpBasket:bookList){
			if(tmpBasket.getBook()==book){
				Basket tmp=tmpBasket;
				tmp.setCnt(cnt); break;
			}
		}
	}
}
