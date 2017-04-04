package config;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;

import domain.Category;

public interface CategoryMapper {	
	List<Category> getCategories();
	Category getCategory(int categoryid);
	List<Category> getRegionCategories(int code1);
	
	@Insert("INSERT INTO Category (category_id, code1, code2, code3, category_name)"
			+ "VALUES (CATEGORY_ID_SEQ.NEXTVAL, #{code1}, #{code2}, #{code3}, #{categoryName,jdbcType=VARCHAR})")
	int addCategory(Category category);
	
	@Delete("DELETE FROM Category WHERE category_id = #{categoryid}")
	int delCategory(int categoryid);
}
