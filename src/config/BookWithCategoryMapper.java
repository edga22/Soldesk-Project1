package config;

import java.util.List;

import domain.Book;
import domain.BookWithCategory;

public interface BookWithCategoryMapper {
	List<BookWithCategory> getAllBookWithCategory();
	List<BookWithCategory> getBookWithCategorycategory(int categoryID);
	List<BookWithCategory> getBookWithCategorycode1(int code1);
	List<BookWithCategory> getBookWithCategoryBooks(Book target);
	BookWithCategory getBookWithCategoryBook(int BookID);
}