package dao;

import domain.Book; 

public interface BookDao {
	public Book[] getBooks();
	public Book getBook(int bookID);
	public Book[] getTitleBooks(String title);
	
	public int cntBooks();
	public int addBook(Book book);	
	public int updateBook(Book book);	
}
