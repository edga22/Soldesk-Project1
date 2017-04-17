package dao;

import java.util.List;
import domain.Category;

public interface CategoryMgrDao {
	List<Category> getCategories();
	List<Category> getCategoriesUse();
	List<Category> getCategoriesCode1();
	List<Category> getCategoriesCode2();	
	Category getCategory(int categoryID);
	List<Category> getRegionCategories(int code1);
	
	int addCategory(Category category);
	int updateCategory(Category category);
	int delCategory(int categoryID);
}
