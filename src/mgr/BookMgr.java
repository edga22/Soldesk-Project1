package mgr;

import dao.DbBaseInvenDao;
import dao.InvenDao;
import domain.Book;

public class BookMgr {
	InvenDao invenDao;

	public BookMgr() {
		invenDao = new DbBaseInvenDao();
	}
	
	public Book[] getBooks(){
		return invenDao.getBooks();
	}
	
	public Book getBook(int bookID){
		return invenDao.getBook(bookID);
	}
	
	public int updateBook(Book book){
		return invenDao.updateBook(book);
	}
		
	public int addBook(Book book){
		return invenDao.addBook(book);
	}
	
	public int delBook(int bookID){
		return invenDao.delBook(bookID);
	}
}
