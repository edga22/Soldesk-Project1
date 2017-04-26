package dao;

import java.util.List;
import domain.Category;

public interface CategoryMgrDao {
	//전체 카테고리 리스트
	List<Category> getCategories(); 
	//전체 사용 카테고리 리스트
	List<Category> getCategoriesUse(); 
	//전체 분류1 카테고리 리스트
	List<Category> getCategoriesCode1(); 
	//전체 분류2 카테고리 리스트
	List<Category> getCategoriesCode2(); 
	//카테고리 아이디로 카테고리 정보 찾기
	Category getCategory(int categoryID);
	// 코드1 번호로 카테고리 정보 찾기
	Category getCode1(int code1); 
	//코드1번호에 속하는 하위분류 찾기
	List<Category> getRegionCategories(int code1); 
	//카테고리 추가
	int addCategory(Category category); 
	// 카테고리 수정
	int updateCategory(Category category); 
	//카테고리 삭제
	int delCategory(int categoryID); 
}
