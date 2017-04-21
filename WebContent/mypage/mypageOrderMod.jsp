<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.PurchaseOrder"
		 import="mgr.DeliveryMgr" 
		 import="domain.Book"
		 import="service.OrderState"
		 import="domain.OrderDetail"
		 import="mgr.BookMgr"
		 import="service.MypageService"%>
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
margin:2rem;

}

</style>
</head>
<body>
<% 
DeliveryMgr dm = new DeliveryMgr();
BookMgr bm = new BookMgr();
OrderState order = new OrderState();
MypageService mps = new MypageService();

int memberID = (Integer)session.getAttribute("memberID");
PurchaseOrder[] purchaseOrders = dm.getMember(memberID);
%>
<jsp:include page="/main_navbar.jsp"></jsp:include>
<div class="container">
<div class="col-sm-2">
<jsp:include page="/mypage/mypageMain_nav.jsp"/>
</div>           
  <div class="col-sm-10">
      <table class="table table-hover">
	<thead>
		<tr>
			<th>구매번호</th>
			<th style="width:40rem;">상품</th>
			<th>구매일</th>
			<th>배송상태</th>
			<th>반품</th>
			<th>포인트</th>
		</tr>
	</thead>
	<tbody>
<%

for(PurchaseOrder po:purchaseOrders){ 
	Book book = bm.getBook(po.getPurchaseOrderID());
	OrderDetail[] ods =mps.getIdDetails(po.getPurchaseOrderID());
	int orderID =po.getPurchaseOrderID();
	int point =0;
	if(po.getProgress()==4 ||po.getProgress()==5){
	 point= mps.getPoint(ods);

	}
%>	
		<tr>
			<td><%=po.getPurchaseOrderID()%></td>
			<td><%=order.getProduct(ods) %></td>
			<td><%=po.getPurchaseDate() %></td>
			<td><%=order.change(po.getProgress())%></td>
			<td style="text-align:center; height:auto;"><a href="/mypage/mypageRefundProc.jsp?a=1&orderID=<%=orderID %>" class="btn btn-danger btn-xs">교환</a>
			    <a href="/mypage/mypageRefundProc.jsp?a=2&orderID=<%=orderID %>" class="btn btn-danger btn-xs">환불</a>
			    <a href="/mypage/mypageRefundProc.jsp?a=3&orderID=<%=orderID %>" class="btn btn-primary btn-xs">교환/환불취소</a> </td>
			<td><%=point %></td>    
		</tr>
<%
} 
%>
	</tbody>
	</table>
	</div>
	</div>
<jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>