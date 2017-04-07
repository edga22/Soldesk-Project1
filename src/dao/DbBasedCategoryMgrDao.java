package dao;

import java.util.List;

import config.CategoryMgrMapper;
import config.Factory;
import domain.Category;

public class DbBasedCategoryMgrDao implements CategoryMgrDao{
	CategoryMgrMapper mapper ;
	
	public DbBasedCategoryMgrDao(){
		this.mapper = Factory.getMapper(CategoryMgrMapper.class);
	}
	
	public List<Category> getCategories(){
		return mapper.getCategories();
	}
	public List<Category> getCategoriesUse(){
		return mapper.getCategoriesUse();
	}
	public List<Category> getCategoriesUseCode1(){
		return mapper.getCategoriesUseCode1();
	}
	public List<Category> getCategoriesUseCode2(){
		return mapper.getCategoriesUseCode2();
	}
	public Category getCategory(int categoryID){
		return mapper.getCategory(categoryID);
	}
	public List<Category> getRegionCategories(int code1){
		return mapper.getRegionCategories(code1);
	}
	
	public int addCategory(Category category){
		return mapper.addCategory(category);
	}
	public int delCategory(int categoryID){
		return mapper.delCategory(categoryID);
	}
}
