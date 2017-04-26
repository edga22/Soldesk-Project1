package config;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;

import domain.Category;

public interface CategoryMgrMapper {
	//카테고리 전체 리스트
	List<Category> getCategories();
	//카테고리 전체 사용 리스트
	List<Category> getCategoriesUse();
	//카테고리 대분류 리스트
	List<Category> getCategoriesCode1();
	//카테고리 2차분류 리스트
	List<Category> getCategoriesCode2();
	//카테고리 아이디로 카테고리 정보 조회
	Category getCategory(int categoryID);
	//대분류 번호로 카테고리 정보 조회
	Category getCode1(int code1);
	//대분류에 속한 하위분류 조회
	List<Category> getRegionCategories(int code1);
	//카테고리 수정
	int updateCategory(Category category);
	////카테고리 추가
	@Insert("INSERT INTO Category (code1, code2, category_name, category_subject, category_use)"
			+ "VALUES (#{code1}, #{code2}, #{categoryName,jdbcType=VARCHAR}, #{categorySubject,jdbcType=VARCHAR}, #{categoryUse})")
	int addCategory(Category category);
	//카테고리 삭제
	@Delete("DELETE FROM Category WHERE category_id = #{categoryid}")
	int delCategory(int categoryid);
}