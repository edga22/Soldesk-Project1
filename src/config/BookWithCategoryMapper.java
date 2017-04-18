package config;

import java.util.List;

import domain.Book;
import domain.BookWithCategory;

public interface BookWithCategoryMapper {
	List<BookWithCategory> getAllBookWithCategory();
	List<BookWithCategory> getBookWithCategoryBooks(int[] bookids);
	List<BookWithCategory> getBookWithCategoryBook(Book book);
}