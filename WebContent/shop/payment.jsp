<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"
		 import="service.PayService"%>
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
<%
PayService ps = new PayService();
String[] bookIDs = request.getParameterValues("bookID");
String[] cnts = request.getParameterValues("cnt");
%>
<jsp:include page="/main_navbar.jsp"></jsp:include>
<div class="container" id="Payment">
<h3>주문 상품 확인</h3>
<form action="/shop/payResult.jsp">
<%
// 회원정보 불러오기
Integer memberID;
if(session.getAttribute("memberID") != null) memberID = (Integer)session.getAttribute("memberID");
else { memberID = 0;}

if(memberID == 0){
%>
	<p>로그인 되지 않았습니다.</p>
	<p>로그인 후 구매 가능합니다.</p>
<%	
}else{
	Member member = ps.getMember(memberID);

	int totalPrice = 0;
	int totalPoint = 0;
	int i=0;

	//받은 데이터 나열하기
	if(bookIDs == null || bookIDs.equals("")){
	%>
		<p>장바구니에서 데이터가 넘어오지 않음!!!</p>
	<%
	}else{
		
		for(String bID : bookIDs){
			// 수량이 넘어오지 않을경우 1권으로 인식.
			int cnt = 1;
			if(cnts == null || cnts.equals("")){
			}else{
				cnt = Integer.parseInt(cnts[i]);
			}
			totalPrice += (ps.getBook(bID)).getPrice()*cnt;
			totalPoint += ps.getPoint(bID, cnt);
	%>	
		<input type="hidden" name="bookID" value="<%=bID%>"><!-- 책번호 넘겨주기 -->
		<input type="hidden" name="cnt" value="<%=cnt%>"><!-- 책 수량 넘겨주기 -->
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
			<td><%=ps.getBook(bID).getBookName()%></td>
			<td><%=ps.getOverPrice(bID)%></td>
			<td><%=ps.getBook(bID).getPrice()%></td>
			<td><%=cnt %></td>
			<td><%=ps.getBook(bID).getPrice()*cnt  %></td>
			<td><%=ps.getPoint(bID, cnt) %></td>
			<td><%= "usb 충전기"  %></td>
		  </tr>  			
		 </tbody>
		</table>	
		</div>
	<%		
	i++;}
	}
	%>
		<div>
			<p>총 금액 : <%=totalPrice %></p>
			<p>총 포인트 : <%=totalPoint %> </p>	
		</div><br><br><br><br>
	<!-- 구매자 정보 -->	
		<h3>구매자 및 배송 정보</h3>
		<div style="border:0.1rem solid black; margin:2rem; padding:1rem;">	
		<table class="table table-condensed">
		 <tbody>	 	
		  <tr>
			<th>이름</th> <td><input type="text" name="userName" placeholder="주문자 성함" value="<%=member.getName()%>" required></td>
		  </tr>  			
		  <tr>
			<th>연락처</th> <td><input type="text" name="phone" placeholder="연락처" value="<%=member.getPhone()%>" required></td>
		  </tr>  			
		  <tr>
			<th>e-mail</th> <td><input type="email" name="email" placeholder="주문확인용 e-mail" value="<%=member.getEmail()%>" required></td>
		  </tr>  			
		  <tr>
			<th>주소</th> <td><input type="text" name="address" placeholder="배송 주소" value="<%=member.getAddress()%>" required></td>
		  </tr>  			
		 </tbody>
		</table>		
		</div>
	<!-- 판매자 정보 -->	
		<h3>판매자 및 배송 정보</h3>
		<div style="border:solid black 0.1rem; margin:2rem; padding:1rem;">
		 <p> 입금 계좌: 농협 123-456-7890 북카페</p>
		 <p> 입금일 기준 2~3일 배송 시간 소요</p>
		</div>
	<!-- 완료하기 -->		
		<div align="right">
		  <button type="submit" class="btn btn-default">주문 하기</button>
		  <a href="/main.jsp" class="btn btn-default">취소</a>
		</div>
		</form>		
	</div>
<% 
}
%>
<jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>