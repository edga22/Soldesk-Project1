<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="service.OrderState"
		 import="service.PayService"
		 import="domain.Book"%>
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
PayService ps = new PayService();
OrderState state = new OrderState();
int point=0;
int i=0;
int memberID =0; 

//로그인 되있는지 검사
memberID = (Integer)session.getAttribute("memberID");
if(memberID == 0){
%>
	<p>로그인이 안되었습니다.</p>
<%
}else{
	// 이전 페이지에서 데이터 받아오기, 주문번호 자동생성
	String[] bookIDs = request.getParameterValues("bookID"); 
	String[] cnts = request.getParameterValues("cnt"); 
	String userName = request.getParameter("userName");
	String phone = request.getParameter("phone");
	String email = request.getParameter("postCode");
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
	if( bookIDs == null || bookIDs.equals("") || cnts == null || cnts.equals("")){
%>	
	<tr><th> 데이터가 잘못 넘어왔습니다. </th></tr>
<%	
	}else{
		ps.setOrder(memberID, bookIDs, cnts); // 배송관리 DB에 저장(재고에서 판매수량만큼 차감됨)
		for(String bookID : bookIDs){
			Book book = ps.getBook(bookID); // 도서 생성
			int cnt = Integer.parseInt(cnts[i]);
			point += ps.getPoint(bookID, cnt); // 구매목록마다 포인트 누적		
%>	 	
	  <tr>
		<th><%=ps.getOrderID() %></th>
		<th><%=book.getBookName()%></th>
		<th><%=cnt%></th>
		<th><%=ps.getToday()%></th>
		<th><%=state.change(1)%></th>
	  </tr>
<%	
			i++;
			}
			ps.setPoint(memberID, point); // 구매후 총 적립포인트 저장
%>
	 </tbody>
	</table>
	<p>총 적립금:<%=point %></p>
	<p>구매해 주셔서 갑사합니다.</p>
</div>
<%		
	}
}
%>
<jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>