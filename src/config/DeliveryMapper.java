package config;

import java.util.List;

import domain.PurchaseOrder;

public interface DeliveryMapper {
	//제목, 저자, 출판사 통합 검색
		List<PurchaseOrder> getOrders();
		
		// 배송상태로 목록찾기
		PurchaseOrder getOrder(int Progess);
		
		// 주문번호로 목록 검색
		List<PurchaseOrder> getProgress(int OrderID);
		
		// 회원번호로 목록 검색
		List<PurchaseOrder> getMember(int MemberID);
		
		// 주문상태 업데이트
		int updateOrder(int OrderID);
		
		// 주문추가
		int addOrder(PurchaseOrder purchaseOrder);
}
