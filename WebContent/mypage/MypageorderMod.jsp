<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<jsp:include page="/main_navbar.jsp"></jsp:include>

<div class="container">
  <div class="row content">
    <div class="col-sm-2 sidenav">
		<jsp:include page="/mypage/MypageMain.jsp"></jsp:include>
    </div>
  <div class="col-sm-10">
      <h2>주문조회/변경/취소</h2>
      <h3>-배송문의:CJ대한통운</h3>
      <table class="table table-hover">
	<thead>
		<tr>
			<th>주문일</th>
			<th>주문번호</th>
			<th>수령인</th>
			<th>주문상품</th>
			<th>조회</th>
		</tr>
	</thead>
	<tbody>
<%  
	int temp=2;
	for(int i = 0; i< temp ; i++){
%>	
		<tr>
			<td><%="2016-01-18"%></td>
			<td><%="1234-57" %></td>
			<td><%="송성우" %></td>
			<td><%="Java의 정석" %></td>
			<td><a href="#">상세조회</a></td>
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