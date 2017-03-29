package config;

import java.util.List;
import domain.Book;

public interface BookMapper {
	List<Book> getBooks();
	Book getBook(int bookID);
	Book getTitleBook(String title);	
	
	int cntBooks();
	int cntBook(int bookID);
	int addBook(Book book);	
}
