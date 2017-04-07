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
	
	public List<Category> listCategories(){
		return categoMgrDao.getCategories();
	}
	
	public List<Category> listCategoriesUse(){
		return categoMgrDao.getCategoriesUse();
	}
	
	public List<Category> listCategoriesUseCode1(){
		return categoMgrDao.getCategoriesUseCode1();
	}
	
	public List<Category> listCategoriesUseCode2(){
		return categoMgrDao.getCategoriesUseCode2();
	}
	
	public Category findCategory(int categoryID){
		return categoMgrDao.getCategory(categoryID);
	}	
	
	public boolean addCategory(Category category){
		return categoMgrDao.addCategory(category)>0;
	}
	
	public boolean delCategory(int categoryID){
		return categoMgrDao.delCategory(categoryID)>0;
	}
}
