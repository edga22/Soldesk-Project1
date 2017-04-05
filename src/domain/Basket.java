package domain;

public class Basket {
	private Book book;
	private int amount;
	
	public Basket(){ }
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
}
