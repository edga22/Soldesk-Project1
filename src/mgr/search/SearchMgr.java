package mgr.search;

import dao.BookDao;
import dao.DbBasedBookDao;
import domain.Book;

public class SearchMgr {
	BookDao bookdao ;
	public SearchMgr (){
		bookdao = new DbBasedBookDao();
	}
	
	public int cntBooks(){
		return bookdao.cntBooks();
	}
	
	public Book[] getBooks(String target){		
		return bookdao.getBooks(target);
	}
	public Book[] getCateBooks(String category){
		return null;
	}
}
