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
	//카테고리 전체 리스트
	public List<Category> getCategories(){
		return mapper.getCategories();
	}
	//카테고리 전체 사용 리스트
	public List<Category> getCategoriesUse(){
		return mapper.getCategoriesUse();
	}
	//카테고리 대분류 리스트
	public List<Category> getCategoriesCode1(){
		return mapper.getCategoriesCode1();
	}
	//카테고리 2차분류 리스트
	public List<Category> getCategoriesCode2(){
		return mapper.getCategoriesCode2();
	}
	//카테고리 아이디로 카테고리 정보 조회
	public Category getCategory(int categoryID){
		return mapper.getCategory(categoryID);
	}
	//대분류 번호로 카테고리 정보 조회
	public Category getCode1(int code1){
		return mapper.getCode1(code1);
	}
	//대분류에 속한 하위분류 조회
	public List<Category> getRegionCategories(int code1){
		return mapper.getRegionCategories(code1);
	}
	//카테고리 추가
	public int addCategory(Category category){
		return mapper.addCategory(category);
	}
	//카테고리 수정
	public int updateCategory(Category category){
		return mapper.updateCategory(category);
	}
	//카테고리 삭제
	public int delCategory(int categoryID){
		return mapper.delCategory(categoryID);
	}
}
