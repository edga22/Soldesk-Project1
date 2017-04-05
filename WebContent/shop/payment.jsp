<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Book"
		 import="mgr.BookMgr"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>구매 결재창</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="/main_navbar.jsp"></jsp:include>
<div class="container" id="Payment">
<h3>주문 상품 확인</h3>
<%
BookMgr mymgr = new BookMgr();
int bookCnt = 1;
int bookID = 0;
int overPrice = 0;
int point = 0;
//즉시구매 창에서 수량을 받아왔을경우 실행되는 부분.
String tmpCnt = request.getParameter("cnt");
String tmpID = (String)session.getAttribute("bookID");
String basketItem = request.getParameter("bookID");
if(tmpCnt == null || tmpCnt.equals("")){	
}else{
	bookCnt = Integer.parseInt(tmpCnt);
	if(tmpID == null || tmpID.equals("")){
		bookID = Integer.parseInt(basketItem);
	}else{
		bookID = Integer.parseInt(tmpID);
	}
	Book book = mymgr.getBook(bookID);
	overPrice = (int)(book.getPrice()*1.1)/100*100;
	point = (int)(book.getPrice()*0.1)/100*100;
%>	
	<div style="border:0.1rem solid black; margin:2rem; padding:1rem;">
	<table class="table table-condensed">
	 <thead>
	  <tr>
		<th>상 품</th>
		<th>정 가(원)</th>
		<th>판 매 가(원)</th>
		<th>수 량</th>
		<th>합 계</th>
		<th>적 립 금(p)</th>
		<th>사 은 품</th>
	  </tr>
	 </thead>
	 <tbody>	 	
	  <tr>
		<td><%=book.getBookName()%></td>
		<td><%=overPrice%></td>
		<td><%=book.getPrice()%></td>
		<td><%=bookCnt %></td>
		<td><%=book.getPrice()*bookCnt  %></td>
		<td><%=book.getPrice()*0.1  %></td>
		<td><%= "usb 충전기"  %></td>
	  </tr>  			
	 </tbody>
	</table>	
	</div>	
<%
}
//장바구니에서 bookID 값들을 받을경우
String[] bookIDs = request.getParameterValues("bookID");
if(bookIDs == null || bookIDs.equals("")){
}else{
	for(String bID : bookIDs){
		Book book = mymgr.getBook(Integer.parseInt(bID));
%>	
	<div style="border:0.1rem solid black; margin:2rem; padding:1rem;">
	<table class="table table-condensed">
	 <thead>
	  <tr>
		<th>상 품</th>
		<th>정 가(원)</th>
		<th>판 매 가(원)</th>
		<th>수 량</th>
		<th>합 계</th>
		<th>적 립 금(p)</th>
		<th>사 은 품</th>
	  </tr>
	 </thead>
	 <tbody>	 	
	  <tr>
		<td><%=book.getBookName()%></td>
		<td><%=overPrice%></td>
		<td><%=book.getPrice()%></td>
		<td><%=bookCnt %></td>
		<td><%=book.getPrice()*bookCnt  %></td>
		<td><%=book.getPrice()*0.1  %></td>
		<td><%= "usb 충전기"  %></td>
	  </tr>  			
	 </tbody>
	</table>	
	</div>
<%		
	}
}
%>	
	<br><br><br><br>
<!-- 구매자 정보 -->	
	<h3>구매자 및 배송 정보</h3>
	<form action="#">
	<div style="border:0.1rem solid black; margin:2rem; padding:1rem;">	
	<table class="table table-condensed">
	 <tbody>	 	
	  <tr>
		<th>이름</th> <td><input type="text" placeholder="주문자 성함"></td>
	  </tr>  			
	  <tr>
		<th>연락처</th> <td><input type="text" placeholder="연락처"></td>
	  </tr>  			
	  <tr>
		<th>e-mail</th> <td><input type="text" placeholder="주문확인용 e-mail"></td>
	  </tr>  			
	  <tr>
		<th>주소</th> <td><input type="text" placeholder="배송 주소"></td>
	  </tr>  			
	 </tbody>
	</table>		
	</div>
<!-- 구매자 정보 -->	
	<h3>구매자 및 배송 정보</h3>
	<div style="border:solid black 0.1rem; margin:2rem; padding:1rem;">
	 <p> 입금 계좌: 농협 123-456-7890 북카페</p>
	</div>
	
<!-- 완료하기 -->		
	<div align="right">
	  <button type="submit" class="btn btn-default">주문 하기</button>
	</div>
	
	</form>		
</div>
<jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>