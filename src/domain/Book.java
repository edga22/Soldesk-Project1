package domain;

import java.sql.Date;

public class Book {
	private int bookID;
	private int categoryID;
	private int eventID;
	private String bookName;
	private String author;
	private String publisher;
	private Date publishDate;
	private int imageID;
	
	public Book() {}
	public Book(int bookID, int categoryID, int eventID, String bookName,
			String author, String publisher, Date publishDate, int imageID) {
		super();
		this.bookID = bookID;
		this.categoryID = categoryID;
		this.eventID = eventID;
		this.bookName = bookName;
		this.author = author;
		this.publisher = publisher;
		this.publishDate = publishDate;
		this.imageID = imageID;
	}

	public int getBookID() {
		return bookID;
	}
	public void setBookID(int bookID) {
		this.bookID = bookID;
	}
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public int getEventID() {
		return eventID;
	}
	public void setEventID(int eventID) {
		this.eventID = eventID;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}
	public int getImageID() {
		return imageID;
	}
	public void setImageID(int imageID) {
		this.imageID = imageID;
	}
}