package mgr;

import config.DeliveryMapper;
import config.Factory;
import domain.PurchaseOrder;;

public class DeliveryMgr {
	DeliveryMapper mapper ;
	public DeliveryMgr (){
		mapper = Factory.getMapper(DeliveryMapper.class);
	}
	
	public PurchaseOrder[] getOrders(){
		return mapper.getOrders().toArray(new PurchaseOrder[mapper.getOrders().size()]);
	}
	
	public PurchaseOrder getOrder(int OrderID){		
		return mapper.getOrder(OrderID);
	}
	
	public PurchaseOrder[] getProgress(int Progress){		
		return mapper.getProgress(Progress).toArray(new PurchaseOrder[mapper.getProgress(Progress).size()]);
	}
	
	public PurchaseOrder[] getMember(int MemberID){
		return  mapper.getMember(MemberID).toArray(new PurchaseOrder[mapper.getMember(MemberID).size()]);
	}
	
	public int addOrder(PurchaseOrder purchaseOrder){
		return mapper.addOrder(purchaseOrder);
	}
	
	public int updateOrder(int OrderID){
		return mapper.updateOrder(OrderID);
	}

}
