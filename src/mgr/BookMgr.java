package mgr;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import dao.DbBaseInvenDao;
import dao.InvenDao;
import domain.Book;

public class BookMgr {
	InvenDao invenDao;

	public BookMgr() {
		invenDao = new DbBaseInvenDao();
	}
	
	public Book[] getBooks(){
		return invenDao.getBooks();
	}
	
	public Book getBook(int bookID){
		return invenDao.getBook(bookID);
	}
	
	public int updateBook(Book book){
		return invenDao.updateBook(book);
	}
		
	public int addBook(Book book){
		return invenDao.addBook(book);
	}
	
	public int delBook(int bookID){
		return invenDao.delBook(bookID);
	}

	public Book setBook(int bookID,String bookName,String author,String date, String price, String publisher,String categoryID,String imageID) throws ParseException{
		Book[] books = invenDao.getBooks();
		Book modbook = new Book();

		for(Book book: books){
			if( book.getBookID() == bookID ){ // 북아이디와 일치하는 책 찾기
				modbook.setBookID(bookID);

				if(bookName ==null || bookName.equals("")) modbook.setBookName(book.getBookName()); 
					else modbook.setBookName(bookName);
			 
				if(author==null || author.equals("")) modbook.setAuthor(book.getAuthor());
					else modbook.setAuthor(author);

				if(publisher==null || publisher.equals("")) modbook.setPublisher(book.getPublisher());
					else  modbook.setPublisher(publisher);
				
				if(categoryID==null || categoryID.equals("")) modbook.setCategoryID(book.getCategoryID()); 
				else  modbook.setCategoryID(Integer.parseInt(categoryID));
				
				if( date == null || date.equals("")){ // 날짜 포멧 및 날짜 변경
					modbook.setPublishDate(book.getPublishDate());
				}else {
					SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
					Date tmp = format.parse(date);
					java.sql.Date pubDate = new java.sql.Date(tmp.getTime());
					modbook.setPublishDate(pubDate);
				}
				
				if( price == null || price.equals("")){
					modbook.setPrice(book.getPrice());	
				}else modbook.setPrice(Integer.parseInt(price));
				
				if(imageID == null || imageID.equals("")) modbook.setImageID(book.getImageID());
					else modbook.setImageID(imageID);
				
				invenDao.updateBook(modbook);
			}
		}
		return modbook;
	}
}
