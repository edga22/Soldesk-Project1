package dao;

import java.util.List;
import domain.Category;

public interface CategoryMgrDao {
	List<Category> getCategories();
	List<Category> getCategoriesUse(Category category);
	List<Category> getCategoriesUseCode1();
	List<Category> getCategoriesUseCode2();	
	Category getCategory(int categoryID);
	List<Category> getRegionCategories(int code1);
	
	int addCategory(Category category);	
	int delCategory(int categoryID);
}
