package dao;

import java.util.List;

import domain.OrderDetail;

public interface OrderDetailDao {
	public OrderDetail[] getDetails();
	public OrderDetail[] getIdDetails(int perchaseID);
	
	public int addDetail(OrderDetail orderdetail);
	public int addDetails(List<OrderDetail> orderdetail);
}
