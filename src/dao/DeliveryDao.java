package dao;

import domain.PurchaseOrder;

public interface DeliveryDao {
	public PurchaseOrder[] getOrders();	
	public PurchaseOrder getOrder(int OrderID);	
	public PurchaseOrder[] getProgress(int Progress);
	public PurchaseOrder[] getMember(int MemberID);
	public int updateOrder(int OrderID);
	public int addOrder(PurchaseOrder purchaseOrder);

}
