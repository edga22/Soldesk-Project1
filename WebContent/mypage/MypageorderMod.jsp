<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

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
	int temp=1;
	for(int i = 0; i< temp ; i++){
%>	
		<tr>
			<td><%=temp %></td>
			<td><%=temp %></td>
			<td><%=temp %></td>
			<td><%=temp %></td>
			<td><a href="#">상세조회</a></td>
		</tr>
<%
	}
%>		
	</tbody>
	</table>

</body>
</html>