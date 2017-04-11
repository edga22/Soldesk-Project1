package mgr;

import dao.DBBaseDeliveryDao;
import dao.DeliveryDao;
import domain.PurchaseOrder;

public class DeliveryMgr {
	DeliveryDao deliveryDao;
	public DeliveryMgr (){
		deliveryDao = new DBBaseDeliveryDao();
	}
	
	public PurchaseOrder[] getOrders(){
		return deliveryDao.getOrders();
	}
	
	public PurchaseOrder getOrder(int OrderID){		
		return deliveryDao.getOrder(OrderID);
	}
	
	public PurchaseOrder[] getProgress(int Progress){		
		return deliveryDao.getProgress(Progress);
	}
	
	public PurchaseOrder[] getMember(int MemberID){
		return  deliveryDao.getMember(MemberID);
	}
	
	public int addOrder(PurchaseOrder purchaseOrder){
		return deliveryDao.addOrder(purchaseOrder);
	}
	
	public int updateOrder(PurchaseOrder purchaseOrder){
		return deliveryDao.updateOrder(purchaseOrder);
	}

}
