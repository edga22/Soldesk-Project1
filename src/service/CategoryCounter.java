package service;

import java.util.List;

import mgr.CategoryMgr;
import domain.Book;
import domain.Category;

public class CategoryCounter {
	private CategoryMgr cMgr = null;
	
	public  CategoryCounter() {
		cMgr = new CategoryMgr();
	}
	
	public int code1Counter(Book[] books, int code1){
		int cnt = 0;
		List<Category> cList = cMgr.listCategories(); // 모든 카테고리 List
		
		for(Book book : books){
			if(book.getCategoryID()!=0){
				for(Category cat : cList){
					if(book.getCategoryID() == cat.getCategoryID() && cat.getCode1() == code1) {
						cnt++;
						break;
					}
				}				
			}
		}
		return cnt;
	}
}
