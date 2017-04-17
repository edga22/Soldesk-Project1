package config;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;

import domain.Category;

public interface CategoryMgrMapper {	
	List<Category> getCategories();
	List<Category> getCategoriesUse();
	List<Category> getCategoriesUseCode1();
	List<Category> getCategoriesUseCode2();
	Category getCategory(int categoryID);
	List<Category> getRegionCategories(int code1);
	int setCategory(Category category);
	
	@Insert("INSERT INTO Category (code1, code2, category_name, category_subject, category_use)"
			+ "VALUES (#{code1}, #{code2}, #{categoryName,jdbcType=VARCHAR}, #{categorySubject,jdbcType=VARCHAR}, #{categoryUse})")
	int addCategory(Category category);
	
	@Delete("DELETE FROM Category WHERE category_id = #{categoryid}")
	int delCategory(int categoryid);
}