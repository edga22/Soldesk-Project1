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
	
	public List<Category> listCategoriesCode1(){
		return categoMgrDao.getCategoriesCode1();
	}
	
	public List<Category> listCategoriesCode2(){
		return categoMgrDao.getCategoriesCode2();
	}
	
	public Category findCategory(int categoryID){
		return categoMgrDao.getCategory(categoryID);
	}	
	
	public boolean addCategory(Category category){
		return categoMgrDao.addCategory(category)>0;
	}
	
	public boolean updateCategory(Category category){
		return categoMgrDao.updateCategory(category)>0;
	}
	
	public boolean delCategory(int categoryID){
		return categoMgrDao.delCategory(categoryID)>0;
	}
}
