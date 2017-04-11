package dao;

import config.Factory;
import config.OrderDetailMapper;
import domain.OrderDetail;

public class DbBasedOrderDetailDao implements OrderDetailDao {
	OrderDetailMapper mapper = null;
	
	public DbBasedOrderDetailDao() {
		mapper = Factory.getMapper(OrderDetailMapper.class);
	}

	@Override
	public OrderDetail[] getDetails() {
		return mapper.getDetails();
	}

	@Override
	public OrderDetail[] getIdDetails(int perchaseID) {
		return mapper.getIdDetails(perchaseID);
	}

	@Override
	public int addDetail(OrderDetail orderdetail) {
		return mapper.addDetail(orderdetail);
	}

}
