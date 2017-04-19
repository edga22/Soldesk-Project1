package dao;

import java.util.List;

import domain.Book; 

public interface BookDao {
	public Book getBook(int bookID);
	// 제목, 작가, 출판사 통합검색 (target이 null 일경우 전부검색)
	public Book[] getBooks(String target);
	public List<Book> getCode1Books(String target, int code1);
	public List<Book> getAllBooks();
	
	public int cntBooks();
	public int addBook(Book book);	
	public int updateBook(Book book);	
}
