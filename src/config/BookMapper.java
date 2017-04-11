package config;

import java.util.List;
import domain.Book;

public interface BookMapper {
	//제목, 저자, 출판사 통합 검색
	List<Book> getBooks(String target);
	List<Book> getAllBooks();
	
	//ID 책 찾아오기
	Book getBook(int bookID);
	
	int cntBooks();
	int cntBook(int bookID);
	int addBook(Book book);
	int updateBook(Book book);	
}
