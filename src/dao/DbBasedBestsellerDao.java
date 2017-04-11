package dao;

import config.BestsellerMapper;
import config.Factory;
import domain.OrderDetail;

public class DbBasedBestsellerDao implements BestsellerDao{
	BestsellerMapper mapper;
	
	public DbBasedBestsellerDao() {
		mapper=Factory.getMapper(BestsellerMapper.class);
	}

	public OrderDetail[] getBestID() {
		return mapper.getBestID().toArray(new OrderDetail[mapper.getBestID().size()]);
	}
}
