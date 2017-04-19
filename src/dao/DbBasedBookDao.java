package dao;

import java.util.List;

import config.BookMapper;
import config.Factory;
import config.param.BookCode1Target;
import domain.Book;

public class DbBasedBookDao implements BookDao {
	BookMapper mapper ;
	public DbBasedBookDao (){
		mapper = Factory.getMapper(BookMapper.class);
	}
	public Book getBook(int bookID){
		return mapper.getBook(bookID);
	}
	public Book[] getBooks(String target){
		if(target != null && target.equals("")) target = null;
		return mapper.getBooks(target).toArray(new Book[mapper.getBooks(target).size()]);
	}
	
	@Override
	public List<Book> getCode1Books(String target, int code1) {
		BookCode1Target bcTarget = new BookCode1Target();
		bcTarget.setTarget(target);
		bcTarget.setCode1(code1);
		return mapper.getCode1Books(bcTarget);
	}
	
	public List<Book> getAllBooks(){
		return mapper.getAllBooks();
	}
	public int cntBooks(){
		return mapper.cntBooks();
	}
		
	public int addBook(Book book){
		return mapper.addBook(book);
	}
	
	public int updateBook(Book book){
		return mapper.updateBook(book);
	}	
}
