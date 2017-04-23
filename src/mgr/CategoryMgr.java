package mgr;

import java.util.List;

import dao.CategoryMgrDao;
import dao.DbBasedCategoryMgrDao;
import domain.Category;

public class CategoryMgr{
	
	CategoryMgrDao categoMgrDao;
	
	public CategoryMgr(){
		this.categoMgrDao = new DbBasedCategoryMgrDao();
	}
	//전체 카테고리 리스트
	public List<Category> listCategories(){
		return categoMgrDao.getCategories();
	}
	//전체 사용 카테고리 리스트
	public List<Category> listCategoriesUse(){
		return categoMgrDao.getCategoriesUse();
	}
	//전체 분류1 카테고리 리스트
	public List<Category> listCategoriesCode1(){
		return categoMgrDao.getCategoriesCode1();
	}
	//전체 분류2 카테고리 리스트
	public List<Category> listCategoriesCode2(){
		return categoMgrDao.getCategoriesCode2();
	}
	//카테고리 아이디로 카테고리 정보 찾기(소분류)
	public Category findCategory(int categoryID){
		return categoMgrDao.getCategory(categoryID);
	}
	// 코드1 번호의 카테고리 정보 찾기(대분류)
	public Category findCode1(int code1){
		return categoMgrDao.getCode1(code1);
	}
	//코드1번호에 속하는 하위분류 찾기
	public List<Category> findCategoriesCode1(int code1){
		return categoMgrDao.getRegionCategories(code1);
	}
	//카테고리 추가
	public boolean addCategory(Category category){
		return categoMgrDao.addCategory(category)>0;
	}
	// 카테고리 수정
	public boolean updateCategory(Category category){
		return categoMgrDao.updateCategory(category)>0;
	}
	//카테고리 삭제
	public boolean delCategory(int categoryID){
		return categoMgrDao.delCategory(categoryID)>0;
	}
}
