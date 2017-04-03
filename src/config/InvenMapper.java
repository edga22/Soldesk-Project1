package config;

import java.util.List;
import domain.Book;

public interface InvenMapper {
	List<Book> getBooks();
	Book getBook(int bookID);
	
	int cntBooks();
	int addBook(Book book);
	int updateBook(Book book);	
}
