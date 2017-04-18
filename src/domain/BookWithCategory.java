package domain;

public class BookWithCategory {
	private int bookID; //북 아이디
	private int code1; //카테고리 분류1
	private int code2; //카테고리 분류2
	private int categoryID;	//카테고리 아이디
	private Book book; //책 도메인
	private Category category; //카테고리 도메인
	
	public BookWithCategory() {}

	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public int getBookID() {
		return bookID;
	}
	public void setBookID(int bookID) {
		this.bookID = bookID;
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
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
	@Override
	public String toString(){
		return String.format("%d %d %d %d", bookID,categoryID, code1, code2);
	}	
}
