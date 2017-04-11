package dao;

import domain.Book;

public interface InvenDao {
	public Book[] getBooks();
	public Book[] getAllBooks();
	public Book getBook(int bookID);
	public int addBook(Book book);	
	public int updateBook(Book book);
	public int delBook(int bookID);

}
