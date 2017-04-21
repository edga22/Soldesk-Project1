<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="service.OrderState"
		 import="service.PayService"
		 import="mgr.DeliveryMgr"
		 import="domain.PurchaseOrder"
		 import="domain.OrderDetail"
		 import="domain.Book"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>구매 완료 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
#PRT th{
	text-align: center;
	font-size: 1.4rem;	
}
</style>

</head>
<body>
<%
PayService ps = new PayService();
OrderState state = new OrderState();
DeliveryMgr mymgr = new DeliveryMgr();

OrderDetail[] ods = ps.getOrderDetail(ps.getOrderID());
int orderID = ps.getOrderID();
PurchaseOrder po = mymgr.getOrder(orderID);
%>
<jsp:include page="/main_navbar.jsp"/>
<div id="obm" class="container">
<h3>구매 결과확인</h3><br>
	<table class="table table-condensed" >
	 <thead>
	  <tr class="active" id="PRT">		
		<th>주문번호</th>
		<th>품목</th>
		<th>구매날짜</th>
		<th>상태</th>
	  </tr>
	 </thead>
	 <tbody>
	  <tr id="PRT">
		<th ><%=orderID%></th>
		<th><%=state.getProduct(ods)%></th>
		<th><%=po.getPurchaseDate()%></th>
		<th><%=state.change(po.getProgress())%></th>
	  </tr>
	 </tbody>
	</table>
	<br><br>
	<p>구매해 주셔서 갑사합니다.</p>
	<p>적립금은 주문이 완료될경우 자동으로 적립됩니다.</p>
</div>
<jsp:include page="/main_foot.jsp"/>
</body>
</html>