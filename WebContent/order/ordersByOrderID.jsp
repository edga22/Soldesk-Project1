<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.PurchaseOrder"
		 import="domain.OrderDetail"
		 import="service.OrderState"
		 import="mgr.DeliveryMgr"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주문 번호 조회</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<%
DeliveryMgr mymgr = new DeliveryMgr();
OrderState state = new OrderState();
int orderID = Integer.parseInt(request.getParameter("orderID"));
PurchaseOrder po = mymgr.getOrder(orderID);
%>
<jsp:include page="/order/orderMain_nav.jsp"></jsp:include>
<div id="obmid" class="container">
	<form action="/order/orderStateProc.jsp">	
		<input type="number" name="progress" list="select" placeholder="배송상태" required>
		<datalist id="select">
			<option value="1">입금 확인중</option>
			<option value="2">배송준비</option>
			<option value="3">배송시작</option>
			<option value="4">배송완료</option>
			<option value="5">완료</option>
			<option value="6">교환접수</option>
			<option value="7">환불접수</option>
			<option value="8">환불완료</option>
		</datalist>
		<button type="submit" class="btn btn-warning">수정</button>	
<hr style="border: solid 0.1rem;">
		<div style="text-align:center;">
		 <h4>주문 번호 조회 결과</h4>
		</div>
		 <table class="table table-condensed table-striped">
	  	 <thead>
	 	   <tr class="info">
			<th>회원번호</th>
			<th>주문번호</th>
			<th>품목</th>
			<th>구매날짜</th>
			<th>상태</th>
		  </tr>
		 </thead>
		 <tbody>
<%
if( po != null){
	OrderDetail[] ods = state.getIdDetails(po.getPurchaseOrderID());
%>	 	
		  <tr>
			<th><input type="radio" name="orderID" value="<%=po.getPurchaseOrderID()%>"><%=po.getMemberID()%></th>
			<th><%=po.getPurchaseOrderID()%></th>
			<th><%=state.getProduct(ods)%></th>
			<th><%=po.getPurchaseDate()%></th>
			<th><%=state.change(po.getProgress())%></th>
		  </tr>
<%
}else{
%>
		  <tr><th> 검색하신 주문번호는 존재하지 않습니다. </th></tr>
<%
}
%>
		 </tbody>
		 </table>
	</form>
</div>
</body>
</html>