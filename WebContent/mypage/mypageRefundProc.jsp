<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.PurchaseOrder"
		 import="mgr.DeliveryMgr"%>     
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
DeliveryMgr dm = new DeliveryMgr();
int select =Integer.parseInt(request.getParameter("a"));
int orderID =Integer.parseInt(request.getParameter("orderID")); 
if(select==1){
	PurchaseOrder po = dm.getOrder(orderID);
	if(po.getProgress()==4){	
		po.setProgress(6); //교환접수
		dm.updateOrder(po);
	}

}else if(select==2){
	
	PurchaseOrder po = dm.getOrder(orderID);
	if(po.getProgress()==4){
	po.setProgress(7); //환불접수
	dm.updateOrder(po);
	}

}else if(select==3){
	
	PurchaseOrder po = dm.getOrder(orderID);
	if(po.getProgress()==6||po.getProgress()==7){
	po.setProgress(4); //배송완료
	dm.updateOrder(po);
	}
}
%>
<%
RequestDispatcher dispatcher = request.getRequestDispatcher("/mypage/mypageOrderMod.jsp");
		dispatcher.forward(request,response);
%>
</body>
</html>