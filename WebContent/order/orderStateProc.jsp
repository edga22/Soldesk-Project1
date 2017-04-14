<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.PurchaseOrder"
		 import="domain.OrderDetail"
		 import="service.OrderState"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>배송상태 변경</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="/order/deliveryMain.jsp"></jsp:include>
<div class="container">
<%
OrderState os = new OrderState();
int progress = Integer.parseInt(request.getParameter("progress"));
int OrderID = Integer.parseInt(request.getParameter("orderID"));
PurchaseOrder po = os.getOrder(OrderID);

if( po == null || po.equals("") ){
%>
	<h4>배송 상태가 변경되지 않았습니다.</h4>
<%	
}else{
	// 주문상품을 불러오기 위한 객체 준비.
	OrderDetail[] ods = os.getIdDetails(po.getPurchaseOrderID());
	// 배송상태 (입금확인중,배송준비,배송시작)-> (배송완료, 완료) 상태로 변경되었을경우 포인트 적립.
	String check = os.updatePoint(po.getProgress(),progress,po.getMemberID(),OrderID);
%>
	<h4>배송 상태가 변경되었습니다.</h4>
	<p>유저 ID : <%= os.getMemberName(po.getMemberID()) %></p>
	<p>주문 상품 : <%= os.getProduct(ods)%></p>
	<p>주문 번호 : <%= po.getPurchaseOrderID()%></p>
	<p>구매 날짜 : <%= po.getPurchaseDate()%></p>
	<p>배송 상태 : <%= os.change(po.getProgress())%> -> <%po.setProgress(progress);%> <%= os.change(po.getProgress())%>  </p>
	<p><%=check %></p>	
<%
os.updateOrder(po);
}
%>
</div>
</body>
</html>