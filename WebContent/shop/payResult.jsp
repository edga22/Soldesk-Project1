<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.PurchaseOrder"
		 import="domain.Book"
		 import="domain.Member"
		 import="service.OrderState"
		 import="mgr.MemberService"
		 import="mgr.DeliveryMgr"
		 import="mgr.BookMgr"%>
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
BookMgr mymgr2 = new BookMgr();
OrderState state = new OrderState();
PurchaseOrder resist = new PurchaseOrder();

// 회원정보 저장준비(보너스 포인트 저장용)
MemberService ms = new MemberService();
int tmp = (Integer)session.getAttribute("memberID");
int userID=1;
if(tmp == 0){
}else{
	userID = tmp;
}
Member member = ms.getMember(userID);

// 이전 페이지에서 데이터 받아오기, 주문번호 자동생성
String[] bookIDs = request.getParameterValues("bookID"); 

int memberID = 1;//Integer.parseInt(request.getParameter("memberID"));
int amount = 1; // 미구현
String userName = request.getParameter("userName");
String phone = request.getParameter("phone");
String email = request.getParameter("email");
String address = request.getParameter("address");
%>
<jsp:include page="/main_navbar.jsp"></jsp:include>
<div id="obm" class="container">
<h3>구매 결과확인</h3>
	<table class="table table-condensed">
	 <thead>
	  <tr>
		<th>주문번호</th>
		<th>도서명</th>
		<th>수량</th>
		<th>구매날짜</th>
		<th>상태</th>
	  </tr>
	 </thead>
	 <tbody>
<%
// 책 한권씩 구매목록에 추가하기
if( bookIDs == null || bookIDs.equals("")){
%>	
	<tr><th> 입력이 잘못되었습니다. </th></tr>
<%	
}else{
	for(String bookID : bookIDs){	
		resist.setMemberID(memberID);
		resist.setBookID(Integer.parseInt(bookID));
		resist.setAmount(amount);
		resist.setProgress(1);
//		member.setBonusPoint();
	
		mymgr.addOrder(resist);
		Book book = mymgr2.getBook(Integer.parseInt(bookID));
%>	 	
	  <tr>
		<th><%="미구현"%></th>
		<th><%=book.getBookName()%></th>
		<th><%=resist.getAmount()%></th>
		<th><%="미구현"%></th>
		<th><%=state.change(1)%></th>
	  </tr>
<%	
	} 
}
%>
	 </tbody>
	</table>
</div>
<jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>