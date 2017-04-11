package dao;

import config.BestsellerMapper;
import config.Factory;
import domain.Book;

public class DbBasedBestsellerDao implements BestsellerDao{
	BestsellerMapper mapper;
	
	public DbBasedBestsellerDao() {
		mapper=Factory.getMapper(BestsellerMapper.class);
	}
	
	public Book[] getBooks() {
		return mapper.getBooks().toArray(new Book[mapper.getBooks().size()]);
	}
}
