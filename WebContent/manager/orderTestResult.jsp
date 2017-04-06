<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.PurchaseOrder"
		 import="service.OrderState"
		import="mgr.DeliveryMgr" 
		import="java.util.Date" 
		import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<%
DeliveryMgr mymgr = new DeliveryMgr();
OrderState state = new OrderState();
PurchaseOrder resist = new PurchaseOrder();

// 이전 페이지에서 데이터 받아오기
int purchaseOrderID = Integer.parseInt(request.getParameter("purchaseOrderID"));
int memberID = Integer.parseInt(request.getParameter("memberID"));
int bookID = Integer.parseInt(request.getParameter("bookID"));
int amount = Integer.parseInt(request.getParameter("amount"));
int progress = Integer.parseInt(request.getParameter("progress"));
// 받아온 데이터중 날짜 형식 변환
SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
Date tmp = format.parse(request.getParameter("purchaseDate"));
java.sql.Date pchDate = new java.sql.Date(tmp.getTime());
// 데이터를 구매객체에 담기
resist.setPurchaseOrderID(purchaseOrderID);
resist.setMemberID(memberID);
resist.setBookID(bookID);
resist.setAmount(amount);
resist.setProgress(progress);
resist.setPurchaseDate(pchDate);
// DB에 저장
mymgr.addOrder(resist);

// 받은데이터 출력하기 위한 준비
PurchaseOrder[] PurchaseOrders = mymgr.getOrder(memberID);
%>
<div id="obm" class="container">
<h3>입력한 값 확인</h3>
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
				<th><%=po.getMemberID()%></th>
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
			  <tr><th> 검색하신 회원은 구매내역이 없습니다.(페이지 오류) </th></tr>
<%
}
%>
	 </tbody>
	</table>
</div>
</body>
</html>