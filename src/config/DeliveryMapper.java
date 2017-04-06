package config;

import java.util.List;

import domain.PurchaseOrder;

public interface DeliveryMapper {
	//제목, 저자, 출판사 통합 검색
		List<PurchaseOrder> getOrders();
		
		// order 번호로 배송상태 찾아오기
		List<PurchaseOrder> getOrder(int OrderID);
		
		// member 번호로 배송상태 찾아오기
		List<PurchaseOrder> getMember(int MemberID);
		
		// 주문상태 업데이트
		int updateOrder(int OrderID);
		
		// 주문추가
		int addOrder(PurchaseOrder purchaseOrder);
}
