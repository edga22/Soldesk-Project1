package service;

import java.util.Collections;
import java.util.LinkedList;
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
	
	public Category[] getCategoryList(Book[] books){
		List<Category> cList = cMgr.listCategoriesUse();
		List<Category> cUseList = new LinkedList<Category>();
		for(int i=0;i<books.length;i++){
			for(Category cate : cList)
				if(cate.getCategoryID() == books[i].getCategoryID()){ cUseList.add(cate); break; }
		}
		Collections.sort(cUseList);
		
		return cUseList.toArray(new Category[0]);
	}
}
