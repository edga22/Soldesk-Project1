package mgr.search;

import java.util.Arrays;
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
		boolean isFiltered = false;
		for(int idx=0; idx < pickBooks.size() ; idx++){
			if(!pickBooks.get(idx).getBookName().contains(word)){
				pickBooks.remove(idx);
				isFiltered = true;
			}
		}
		return isFiltered;
	}
	
	public boolean categoryFilter(int categoryID){
		
		return true;
	}
}
