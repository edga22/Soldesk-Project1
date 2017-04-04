package dao;

import config.BookMapper;
import config.Factory;
import domain.Book; 

public class DbBasedBookDao implements BookDao {
	BookMapper mapper ;
	public DbBasedBookDao (){
		mapper = Factory.getMapper(BookMapper.class);
	}
	
	public Book[] getBooks(){
		return mapper.getBooks().toArray(new Book[mapper.getBooks().size()]);
	}
	
	public Book getBook(int bookID){
		return mapper.getBook(bookID);
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
	
	public Book[] getCateBooks(String category){
		return null;
	}
}