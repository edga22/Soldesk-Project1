<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="domain.PurchaseOrder"
			 import="mgr.DeliveryMgr" %>
<!DOCTYPE html PUBLIC >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<% 
DeliveryMgr dm = new DeliveryMgr();
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
      <h2>주문조회/변경/취소</h2>
      <h3>-배송문의:CJ대한통운</h3>

      <table class="table table-hover">
	<thead>
		<tr>
			<th>회원번호</th>
			<th>수령인</th>
			<th>주문상품</th>
			<th>수량</th>
			<th>배송조회</th>
		</tr>
	</thead>
	<tbody>
<%
for(PurchaseOrder po:purchaseOrders){
%>	
		<tr>
			<td><%=po.getMemberID() %></td>
			<td><%=po.getPurchaseOrderID() %></td>
			<td><%=po.getBookID() %></td>
			<td><%=po.getAmount()%></td>
			<td><%=po.getProgress() %></td>
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