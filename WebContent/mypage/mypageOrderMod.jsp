<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.PurchaseOrder"
		 import="mgr.DeliveryMgr" 
		 import="domain.Book"
		 import="service.OrderState"
		 import="domain.OrderDetail"
		 import="mgr.BookMgr"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>마이페이지 주문조회/변경/취소</title>
<style>
button{
margin:3rem;

}
</style>
</head>
<body>
<% 
DeliveryMgr dm = new DeliveryMgr();
BookMgr bm = new BookMgr();
OrderState order = new OrderState();
OrderDetail od = new OrderDetail();

int tmp = (Integer)session.getAttribute("memberID");
int userID=1;
if(tmp == 0){
}else{
	userID = tmp;
}

PurchaseOrder[] purchaseOrders = dm.getMember(userID);
%>          
<jsp:include page="/main_navbar.jsp"></jsp:include>

<div class="container">
  <div class="row content">
    <div class="col-sm-2 sidenav">
		<jsp:include page="/mypage/mypageMain.jsp"></jsp:include>
    </div>
  <div class="col-sm-10">
      <table class="table table-hover">
	<thead>
		<tr>
			<th>구매번호</th>
			<th>상품</th>
			<th>구매일</th>
			<th>배송상태</th>
			<th>반품</th>
		</tr>
	</thead>
	<tbody>
<%
for(PurchaseOrder po:purchaseOrders){
	Book book = bm.getBook(po.getPurchaseOrderID());
	OrderDetail[] ods = order.getIdDetails(po.getPurchaseOrderID());
	int orderID =po.getPurchaseOrderID();
%>	
		<tr>
			<td><%=po.getPurchaseOrderID()%></td>
			<td><%=order.getProduct(ods) %></td>
			<td><%=po.getPurchaseDate() %></td>
			<td><%=order.change(po.getProgress())%></td>
			<td><a href="/mypage/mypageRefundProc.jsp?a=1&orderID=<%=orderID %>" class="btn btn-danger btn-xs">교환</a>
			    <a href="/mypage/mypageRefundProc.jsp?a=2&orderID=<%=orderID %>" class="btn btn-danger btn-xs">환불</a>
			    <a href="/mypage/mypageRefundProc.jsp?a=3&orderID=<%=orderID %>" class="btn btn-primary btn-xs">교환/환불취소</a></td>
		</tr>
<%
} 
%>
	</tbody>
	</table>
	</div>
	</div>
</div>
<jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>