package config;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;

import domain.Category;

public interface CategoryMapper {	
	List<Category> getCategorys();
	Category getCategory(int categoryid);
	
	@Insert("INSERT INTO Category (category_id, code1, code2, code3, name)"
			+ "VALUES (CATEGORY_ID_SEQ.NEXTVAL, #{code1}, #{code2}, #{code3}, #{name,jdbcType=VARCHAR})")
	int addCategory(Category category);
	
	@Delete("DELETE FROM Category WHERE category_id = #{categoryid}")
	int delCategory(int categoryid);
}
