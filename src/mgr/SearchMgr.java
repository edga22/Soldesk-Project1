package mgr;

import domain.Book;
import dao.BookDao;
import dao.DbBasedBookDao;

public class SearchMgr {
	BookDao bookdao ;
	public SearchMgr (){
		bookdao = new DbBasedBookDao();
	}
	
	public Book[] getBooks(){
		return bookdao.getBooks();
	}
	
	public Book getBook(int bookID){
		return bookdao.getBook(bookID);
	}
	
		
	public int addBook(Book book){
		return bookdao.addBook(book);
	}
	
	public int cntBooks(){
		return bookdao.cntBooks();
	}
	public Book[] getCateBooks(String category){
		return null;
	}
}
