package mgr;

import config.BookMapper;
import config.Factory;
import domain.Book;

public class SearchMgr {
	BookMapper mapper ;
	public SearchMgr (){
		mapper = Factory.getMapper(BookMapper.class);
	}
	
	public Book[] getBooks(){
		return mapper.getBooks().toArray(new Book[mapper.getBooks().size()]);
	}
	
	public int cntBooks(){
		return mapper.cntBooks();
	}
	
	public int cntBook(int bookID){
		return mapper.cntBook(bookID);
	}
	
	public int addBook(Book book){
		return mapper.addBook(book);
	}
}
