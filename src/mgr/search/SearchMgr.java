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
	
	public BookDao getDao(){
		return bookdao;
	}
	
	public Book[] getBooks(String target){		
		return bookdao.getBooks(target);
	}
	
	public Book[] getCode1Books(String target, int code1){
		if(code1 == 0) return getBooks(target);
		else return bookdao.getCode1Books(target, code1).toArray(new Book[0]);
	}
	
	public Book[] getCateBooks(String category){
		return null;
	}
}
