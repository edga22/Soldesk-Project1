package domain;

public class Basket {
	private Book book;
	private int cnt;
	
	public Basket(){ }
	public Basket(Book book, int cnt) {
		this.book = book;
		this.cnt = cnt;
	}

	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
}
