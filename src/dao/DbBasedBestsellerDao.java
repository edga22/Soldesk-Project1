package dao;

import config.BestsellerMapper;
import config.Factory;
import domain.Bestseller;

public class DbBasedBestsellerDao implements BestsellerDao{
	BestsellerMapper mapper;
	
	public DbBasedBestsellerDao() {
		mapper=Factory.getMapper(BestsellerMapper.class);
	}

	public Bestseller[] getBestseller() {
		return mapper.getBestseller().toArray(new Bestseller[mapper.getBestseller().size()]);
	}
}
