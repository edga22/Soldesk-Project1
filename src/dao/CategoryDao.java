package dao;

import java.util.List;
import domain.Category;

public interface CategoryDao {
	List<Category> getCategories();
	Category getCategory(int categoryid);
	List<Category> getRegionCategories(int code1);
	
	int addCategory(Category category);	
	int delCategory(int categoryid);
}
