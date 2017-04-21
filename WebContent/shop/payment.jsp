<%@page import="java.text.NumberFormat"%>
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
<style>
#address{
	width:60rem;
}
#prt th, td{
	text-align:center;
}

</style>
</head>
<body>
<%
PayService ps = new PayService();
String[] bookIDs = request.getParameterValues("bookID");
String[] cnts = request.getParameterValues("cnt");
NumberFormat nf = NumberFormat.getNumberInstance();
%>
<jsp:include page="/main_navbar.jsp"></jsp:include>
<div class="container" id="Payment">
	<div class="panel panel-default"> 
	  <div class="panel-heading"><h2><i class="glyphicon glyphicon-barcode"></i> 결제</h2></div>
	</div> 
<h3><span class="glyphicon glyphicon-ok"></span> 주문 상품 확인</h3>
<form action="/shop/paymentProc.jsp">
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
	}else{%>	
		<div style="margin:2rem; padding:1rem;">
		<table class="table table-condensed" id="prt">
		 <thead>
		  <tr class="info text-center">
			<th style="width:50rem">상 품</th>
			<th style="width:12rem">정 가</th>
			<th style="width:20rem">판 매 가</th>
			<th style="width:6rem">수 량</th>
			<th style="width:20rem">합 계</th>
			<th style="width:20rem">포 인 트</th>
			<th style="width:25rem">사 은 품</th>
		  </tr>
		 </thead>
		 <tbody>
		 <% for(String bID : bookIDs){
			// 수량이 넘어오지 않을경우 1권으로 인식.
			int cnt = 1;
			if(cnts == null || cnts.equals("")){
			}else{
				cnt = Integer.parseInt(cnts[i]);
			}
			totalPrice += (ps.getBook(bID)).getPrice()*cnt;
			totalPoint += ps.getPoint(bID, cnt);
			%>	
			<input type="hidden" name="bookID" value="<%=bID%>"/><!-- 책번호 넘겨주기 -->
			<input type="hidden" name="cnt" value="<%=cnt%>"/><!-- 책 수량 넘겨주기 --> 	
		  <tr>
			<td><%=ps.getBook(bID).getBookName()%></td>
			<td><%=nf.format(ps.getOverPrice(bID))%>원</td>
			<td><%=nf.format(ps.getBook(bID).getPrice())%>원</td>
			<td><%=cnt %></td>
			<td><%=nf.format(ps.getBook(bID).getPrice()*cnt)%>원</td>
			<td><%=nf.format(ps.getPoint(bID, cnt))%>P</td>
			<td><%= "usb 충전기"  %></td>
		  </tr>
		  <%		
			i++;}
			}
			%>			
		 </tbody>
		</table>	
		</div>
		
		<div class="row">
		<ul class="list-inline">
			<li class="col-md-1"></li>
			<li class="col-md-3"><h4>총 결제 금액: <%=nf.format(totalPrice) %>원</h4></li>
			<li class="col-md-5"><h4>포인트 적립  :<%=nf.format(totalPoint) %>P</h4></li>	
		</ul>
		</div>
		<br><br><br><br>
	<!-- 구매자 정보 -->	
		<h3><span class="glyphicon glyphicon-user"></span> 구매자 정보</h3>
		<div style="margin:2rem; padding:1rem;">	
		<table class="table table-hover">
		 <tbody>
		  <tr>
			<th>이름</th>
			<td><input type="text" name="userName" class="form-control"placeholder="주문자 성함" value="<%=member.getName()%>" required></td>
		  </tr>  			
		  <tr>
			<th>연락처</th> <td><input type="text" name="phone" class="form-control"placeholder="연락처" value="<%=member.getPhone()%>" required></td>
		  </tr>  			
		  <tr>
			<th>주소/우편번호</th> 
			<td>
			<input type="text" name="postCode" class="postcodify_postcode5 form-control" id="postNumber" value="<%=member.getPostCode()%>" readonly/>
			<input type="text" name="address" class="postcodify_address form-control" value="<%=member.getAddress()%>" required readonly/><br />
			<input type="text" name="address2" class="postcodify_details form-control" value="" placeholder="상세주소를 입력하세요."/>
			<button type="button" id="postcodify_search_button" class="btn btn-default btn-xs">주소변경</button>
			<button type="submit" formaction="/shop/paymentAddress.jsp"  class="btn btn-danger btn-xs">변경완료</button>
			<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
			<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
			</td>
		  </tr>  			
		 </tbody>
		</table>		
		</div>
	<!-- 판매자 정보 -->	
		<h3><span class="glyphicon glyphicon-credit-card"></span> 입금 계좌 및 배송 정보</h3>
		<div style="margin:2rem; padding:1rem;">
		 <pre> 입금 계좌: 농협 123-456-7890 북카페<br> 입금 완료 후 1~2일 배송 시간 소요</pre>
		</div>
	<!-- 완료하기 -->		
		<div align="right">
		  <button type="submit" class="btn btn-primary">주문 하기</button>
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