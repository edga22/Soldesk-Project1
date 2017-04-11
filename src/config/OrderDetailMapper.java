package config;

import java.util.List;

import domain.OrderDetail;

public interface OrderDetailMapper {
	public OrderDetail[] getDetails();
	public OrderDetail[] getIdDetails(int perchaseID);
	
	public int addDetail(OrderDetail orderdetail);
	public int addDetails(List<OrderDetail> orderdetail);	
}
