package mgr;

import config.InvenMapper;
import config.Factory;
import domain.Book;

public class BookMgr {
	InvenMapper mapper ;

	public BookMgr() {
		mapper = Factory.getMapper(InvenMapper.class);
	}
	
	public Book[] getBooks(){
		return mapper.getBooks().toArray(new Book[mapper.getBooks().size()]);
	}
	
	public Book getBook(int bookID){
		return mapper.getBook(bookID);
	}
	
	public int updateBook(Book book){
		return mapper.updateBook(book);
	}
		
	public int addBook(Book book){
		return mapper.addBook(book);
	}
	
	public Book delBook(int bookID){
		return mapper.delBook(bookID);
	}
}
