package dao;

import java.util.List;

import config.OrderDetailMapper;
import domain.OrderDetail;
import config.Factory;

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

	@Override
	public int addDetails(List<OrderDetail> orderdetail) {
		return mapper.addDetails(orderdetail);
	}

}
