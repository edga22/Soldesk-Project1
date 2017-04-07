<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.PurchaseOrder"
		 import="service.OrderState"
		 import="mgr.DeliveryMgr"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="/order/deliveryMain.jsp"></jsp:include>
<%
DeliveryMgr mymgr = new DeliveryMgr();
OrderState state = new OrderState();
int progress = Integer.parseInt(request.getParameter("progress"));
int OrderID = Integer.parseInt(request.getParameter("OrderID"));
PurchaseOrder po = mymgr.getOrder(OrderID);

if( po == null || po.equals("") ){
}else{
%>
	<h4>배송 상태가 변경되었습니다.</h4>
	<p>주문 번호 : <%= po.getPurchaseOrderID()%></p>
	<p>구매 날짜 : <%= po.getPurchaseDate()%></p>
	<p>배송 상태 : <%= po.getProgress()%> -> <%po.setProgress(progress);%> <%= po.getProgress()%>  </p>	
<%
}
%>
</body>
</html>