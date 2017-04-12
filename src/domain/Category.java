package domain;

//import java.math.BigDecimal;

public class Category {
	private int categoryID;
	private int code1;
	private int code2;
	private String categoryName;
	private String categorySubject;
	private int categoryUse;
	
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public int getCode1() {
		return code1;
	}
	public void setCode1(int code1) {
		this.code1 = code1;
	}
	public int getCode2() {
		return code2;
	}
	public void setCode2(int code2) {
		this.code2 = code2;
	}
	public int getCode3() {
		return code3;
	}
	public void setCode3(int code3) {
		this.code3 = code3;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getCategorySubject() {
		return categorySubject;
	}
	public void setCategorySubject(String categorySubject) {
		this.categorySubject = categorySubject;
	}
	public int getCategoryUse() {
		return categoryUse;
	}
	public void setCategoryUse(int categoryUse) {
		this.categoryUse = categoryUse;
	}
}
