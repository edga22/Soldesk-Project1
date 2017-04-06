package dao;

import config.DeliveryMapper;
import config.Factory;
import domain.PurchaseOrder;

public class DBBaseDeliveryDao implements DeliveryDao{
	DeliveryMapper mapper ;
	public DBBaseDeliveryDao(){
		mapper = Factory.getMapper(DeliveryMapper.class);
	}
	
	public PurchaseOrder[] getOrders(){
		return mapper.getOrders().toArray(new PurchaseOrder[mapper.getOrders().size()]);
	}
	
	public PurchaseOrder[] getOrder(int OrderID){		
		return mapper.getOrder(OrderID).toArray(new PurchaseOrder[mapper.getOrder(OrderID).size()]);
	}
	public PurchaseOrder[] getMember(int MemberID){
		return  mapper.getOrder(MemberID).toArray(new PurchaseOrder[mapper.getOrder(MemberID).size()]);
	}
	
	public int updateOrder(int OrderID){
		return mapper.updateOrder(OrderID);
	}
	
	public int addOrder(PurchaseOrder purchaseOrder){
		return mapper.addOrder(purchaseOrder);
	}
}
