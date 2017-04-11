package mgr;

import java.util.List;

import dao.DbBasedOrderDetailDao;
import dao.OrderDetailDao;
import domain.OrderDetail;

public class OrderDatailMgr {
	OrderDetailDao orderDetailDao = new DbBasedOrderDetailDao();
	
	public OrderDetail[] getDetails() {
		return orderDetailDao.getDetails();
	}

	public OrderDetail[] getIdDetails(int perchaseID) {
		return orderDetailDao.getIdDetails(perchaseID);
	}

	public int addDetail(OrderDetail orderdetail) {
		return orderDetailDao.addDetail(orderdetail);
	}

	public int addDetails(List<OrderDetail> orderdetail) {
		return orderDetailDao.addDetails(orderdetail);
	}
}
