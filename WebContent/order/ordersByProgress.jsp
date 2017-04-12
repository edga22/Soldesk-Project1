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
<title>주문상태 조회</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<%
DeliveryMgr mymgr = new DeliveryMgr();
OrderState state = new OrderState();
int progress = Integer.parseInt(request.getParameter("progress"));
PurchaseOrder[] PurchaseOrders = mymgr.getProgress(progress);
%>
<div id="obp" class="container">
<jsp:include page="/order/orderMain_nav.jsp"></jsp:include>
	<form action="/order/orderStateProc.jsp">	
		<input type="number" name="progress" placeholder="변경할 상태" required>
		<button type="submit" class="btn btn-default">수정</button>	
<hr style="border: solid 0.1rem;">
		<h4>회원 조회 결과</h4>
		 <table class="table table-condensed">
	  	 <thead>
	 	   <tr>
			<th>회원번호</th>
			<th>주문번호</th>
			<th>품목</th>
			<th>구매날짜</th>
			<th>상태</th>
		  </tr>
		 </thead>
		 <tbody>
<%
if( PurchaseOrders != null){
	for(PurchaseOrder po: PurchaseOrders){
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
	}
}else{
%>
		  <tr><th> 검색하신 주문상태는 존재하지 않습니다. </th></tr>
<%
}
%>
		 </tbody>
		 </table>
	</form>
</div>
</body>
</html>