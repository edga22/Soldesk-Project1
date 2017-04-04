package dao;

import config.InvenMapper;
import config.Factory;
import domain.Book;

public class DbBaseInvenDao implements InvenDao {
	InvenMapper mapper ;
	public DbBaseInvenDao (){
		mapper = Factory.getMapper(InvenMapper.class);
	}
	
	public Book[] getBooks(){
		return mapper.getBooks().toArray(new Book[mapper.getBooks().size()]);
	}
	
	public Book getBook(int bookID){
		return mapper.getBook(bookID);
	}
	
	public int delBook(int bookID){
		return mapper.delBook(bookID);
	}
		
	public int addBook(Book book){
		return mapper.addBook(book);
	}
	
	public int updateBook(Book book){
		return mapper.updateBook(book);
	}

}
