package mgr;

import config.BookMapper;
import config.Factory;
import domain.Book;

public class BookMgr {
	BookMapper mapper ;

	public BookMgr() {
		mapper = Factory.getMapper(BookMapper.class);
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
}
