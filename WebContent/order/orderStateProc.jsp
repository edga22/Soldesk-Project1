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
	OrderDetail[] ods = os.getIdDetails(po.getPurchaseOrderID());
%>
	<h4>배송 상태가 변경되었습니다.</h4>
	<p>유저 ID : <%= os.getMemberName(po.getMemberID()) %></p>
	<p>주문 상품 : <%= os.getProduct(ods)%></p>
	<p>주문 번호 : <%= po.getPurchaseOrderID()%></p>
	<p>구매 날짜 : <%= po.getPurchaseDate()%></p>
	<p>배송 상태 : <%= os.change(po.getProgress())%> -> <%po.setProgress(progress);%> <%= os.change(po.getProgress())%>  </p>	
<%
os.updateOrder(po);
}
%>
</div>
</body>
</html>