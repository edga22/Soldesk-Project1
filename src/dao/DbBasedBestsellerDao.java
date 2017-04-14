package dao;

import config.BestsellerMapper;
import config.Factory;
import domain.BestSeller;

public class DbBasedBestsellerDao implements BestsellerDao{
	BestsellerMapper mapper;
	
	public DbBasedBestsellerDao() {
		mapper=Factory.getMapper(BestsellerMapper.class);
	}

	public BestSeller[] getBestseller() {
		return mapper.getBestseller().toArray(new BestSeller[mapper.getBestseller().size()]);
	}
}
