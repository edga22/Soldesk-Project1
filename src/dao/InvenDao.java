package dao;

import domain.Book;

public interface InvenDao {
	public Book[] getBooks();
	public Book getBook(int bookID);
	public int addBook(Book book);	
	public int updateBook(Book book);
}
