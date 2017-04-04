package dao;

import java.util.List;

import config.CategoryMapper;
import config.Factory;
import domain.Category;

public class DbBasedCategoryDao implements CategoryDao{
	CategoryMapper mapper ;
	
	public DbBasedCategoryDao(){
		mapper = Factory.getMapper(CategoryMapper.class);
	}
	
	public List<Category> getCategories(){
		return mapper.getCategories();
	}
	public Category getCategory(int categoryid){
		return mapper.getCategory(categoryid);
	}
	public List<Category> getRegionCategories(int code1){
		return mapper.getRegionCategories(code1);
	}
	
	public int addCategory(Category category){
		return mapper.addCategory(category);
	}
	public int delCategory(int categoryid){
		return mapper.delCategory(categoryid);
	}
}
