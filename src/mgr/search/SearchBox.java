package mgr.search;

import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;

import domain.Book;

public class SearchBox {
	LinkedList<Book> pickBooks =  null;
	
	public SearchBox(){}
	
	public SearchBox(Book[] books) {
		this.putBooks(books);
	}

	public int putBooks(Book[] books){
		pickBooks = new LinkedList<Book>(Arrays.asList(books));
		return 1;
	}
	
	public Book[] getBooks(){
		if(pickBooks == null) return null;
		else if(pickBooks.size() == 0) return null;
		else return pickBooks.toArray(new Book[pickBooks.size()]);
	}
	
	public boolean wordFilter(String word){		
		LinkedList<Book> filterBooks = new LinkedList<Book>();
		boolean filtered = true;
		
		for(Book book : pickBooks){
			if(book.getBookName().contains(word)) {
				filterBooks.add(book);
			}
		}
		if(pickBooks.size() == filterBooks.size()) filtered = false;
		pickBooks = filterBooks;
		return filtered;
	}
	
	public boolean categoryFilter(int categoryID){
		
		return true;
	}
}
