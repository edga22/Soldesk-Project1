package mgr.search;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import mgr.CategoryMgr;
import domain.Book;
import domain.Category;

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
	
	/**
	 * 제목 필터링 
	 * @param 포함할 제목 word
	 * @return 걸러낸 책이 있으면 true
	 */
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
	
	/**
	 * 대분류 필터링 
	 * @param 필요한 code1
	 * @return
	 */
	public boolean code1Filter(int code1){
		boolean filtered = true;
		CategoryMgr cMgr = new CategoryMgr();
		List<Category> cList = cMgr.listCategories(); // 모든 카테고리 List
		LinkedList<Integer> cTarget = new LinkedList<Integer>(); // 카테고리 id를 저장할 List
		
		// 필요한 code1을 포함한 카테고리 id 저장
		for(Category temp : cList)if(temp.getCode1() == code1) cTarget.add(temp.getCategoryID());
		

		LinkedList<Book> filterBooks = new LinkedList<Book>(); // 필터된 책을 저장할 임시 리스트
		for(Book book : pickBooks){
			if(cTarget.contains(book.getCategoryID()))filterBooks.add(book);
		}
		
		if(pickBooks.size() == filterBooks.size()) filtered = false;
		pickBooks = filterBooks;
		
		return filtered;
	}
}
