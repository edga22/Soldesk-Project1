package service;

import mgr.CategoryMgr;
import domain.Book;

public class CategoryCounter {
//	private DbBasedCategoryDao cDao = null;
	private CategoryMgr cMgr = null;
	
	public  CategoryCounter() {
//		cDao = new DbBasedCategoryDao();
		cMgr = new CategoryMgr();
	}
	
	public int code1Counter(Book[] books, int code1){
		int cnt = 0;
		
		for(Book book : books){
			if(book.getCategoryID()!=0){
				if(cMgr.findCategory(book.getCategoryID()).getCode1() == code1){
					cnt++;
				};
			}
		}
		return cnt;
	}
}
