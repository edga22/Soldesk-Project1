package domain;

import java.util.ArrayList;

public class Basket {
	private ArrayList<Book> bookList;
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
	public ArrayList<Book> getBookList() {
		return bookList;
	}
	public void setBookList(ArrayList<Book> bookList) {
		this.bookList = bookList;
	}

}
