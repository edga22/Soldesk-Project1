package mgr;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import domain.Book;

public class BookSortMgr {
	
	public BookSortMgr(){
	}
	
	/**
	 * 	
	 * @param book Array
	 * @return book List
	 */
	public List<Book> toList(Book[] book){		
		return new ArrayList<Book>(Arrays.asList(book));
	}
	
	/**
	 * 
	 * @param book List
	 * @return book Array
	 */
	public Book[] toArray(List<Book> book){
		return book.toArray(new Book[book.size()]);
	}

	/**
	 * 
	 * @param book
	 * @return
	 */
	public List<Book> priceSort(List<Book> book){
		Collections.sort(book, new priceCompare());		
		return book;
	}
	
	public List<Book> nameSort(List<Book> book){
		Collections.sort(book, new nameCompare());		
		return book;
	}
	
	public List<Book> authorSort(List<Book> book){
		Collections.sort(book, new authorCompare());		
		return book;
	}
	
	public List<Book> dateSort(List<Book> book){
		Collections.sort(book, new dateCompare());		
		return book;
	}
}

/**
 * 비교자
 * 
 */
class priceCompare implements Comparator<Book>{
	@Override
	public int compare(Book o1, Book o2) {
		if(o1.getPrice() > o2.getPrice()) return 1;
		else if(o1.getPrice() < o2.getPrice()) return -1; else return 0;
	}	
}

class nameCompare implements Comparator<Book>{
	@Override
	public int compare(Book o1, Book o2) {
		if(o1.getBookName().compareTo(o2.getBookName()) > 0) return 1;
		else if(o1.getBookName().compareTo(o2.getBookName()) < 0) return -1; else return 0;
	}	
}

class authorCompare implements Comparator<Book>{
	@Override
	public int compare(Book o1, Book o2) {
		if(o1.getAuthor().compareTo(o2.getAuthor()) > 0) return 1;
		else if(o1.getAuthor().compareTo(o2.getAuthor()) < 0) return -1; else return 0;
	}
}

class dateCompare implements Comparator<Book>{
	@Override
	public int compare(Book o1, Book o2) {
		if(o1.getPublishDate().compareTo(o2.getPublishDate()) > 0) return 1;
		else if(o1.getPublishDate().compareTo(o2.getPublishDate()) < 0) return -1; else return 0;
	}
}