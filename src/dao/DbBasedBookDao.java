package dao;

import config.BookMapper;
import config.Factory;
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
