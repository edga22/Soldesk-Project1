package config;

import java.util.List;
import domain.Book;

public interface InvenMapper {
	List<Book> getBooks();
	List<Book> getAllBooks();
	Book getBook(int bookID);

	int addBook(Book book);
	int updateBook(Book book);
	int delBook(int bookID);
	
}
