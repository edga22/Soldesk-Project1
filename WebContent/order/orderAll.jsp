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
<%
DeliveryMgr mymgr = new DeliveryMgr();
OrderState state = new OrderState();
PurchaseOrder[] PurchaseOrders = mymgr.getOrders();
%>
<jsp:include page="/admin/admin_nav.jsp"></jsp:include>
<div id="obm" class="container">
<h3>배송관리</h3><br>
	<div>
	<form>	
	 회원번호로 조회: <input type="number" name="memberID" placeholder="유저 번호" required>
	 <button type="submit" formaction="/order/ordersByMemberID.jsp" class="btn btn-default">검색</button>
	</form>
	<form>	
	 배송상태로 조회: <input type="number" name="progress" placeholder="1입금확인,2배송준비,3배송시작,4배송완료,5완료" required>
	 <button type="submit" formaction="/order/ordersByProgress.jsp" class="btn btn-default">검색</button>
	</form>	
	<form>	
	 주문번호로 조회: <input type="number" name="orderID" placeholder="주문번호" required>
	 <button type="submit" formaction="/order/ordersByOrderID.jsp" class="btn btn-default">검색</button>
	</form>
	</div>	
	<a href="/order/orderAll.jsp" class="btn btn-default">전체검색</a><br><br>
	<form action="/order/orderStateProc.jsp">
	<div style="margin:0.5rem;">
	<input type="number" name="progress" placeholder="변경할 상태" required>
	<button type="submit" class="btn btn-default">수정</button>
	</div>
<hr style="border: solid 0.1rem;">  
<h3>회원번호 조회 결과</h3>
	<table class="table table-condensed">
	 <thead>
	  <tr>
		<th>회원번호</th>
		<th>주문번호</th>
		<th>도서번호</th>
		<th>수량</th>
		<th>구매날짜</th>
		<th>상태</th>
	  </tr>
	 </thead>
	 <tbody>
<%
if( PurchaseOrders != null){
	for(PurchaseOrder po: PurchaseOrders){	
%>	 	
			  <tr>
				<th><input type="radio" name="orderID" value="po.getPurchaseOrderID()"><%=po.getMemberID()%></th>
				<th><%=po.getPurchaseOrderID()%></th>
				<th><%=po.getBookID()%></th>
				<th><%=po.getAmount()%></th>
				<th><%=po.getPurchaseDate()%></th>
				<th><%=state.change(po.getProgress())%></th>
			  </tr>
<%
	}
}else{
%>
			  <tr><th> 검색하신 회원은 구매내역이 없습니다. </th></tr>
<%
}
%>
	 </tbody>
	</table>
	</form>
</div>

</body>
</html>