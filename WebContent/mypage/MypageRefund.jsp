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

      <h2>반품/교환 내역 조회</h2>
      <h3>-반품환불:</h3>
      <div align="right">
       <button type="button">반품/교환신청</button>
       </div>
      <table class="table table-hover">
	<thead>
		<tr>
			<th>접수일</th>
			<th>주문번호</th>
			<th>회송방법</th>
			<th>처리상태</th>
			<th>조회/변경취소</th>
		</tr>
	</thead>
	<tbody>
<%  
	int temp;
	for(int i = 0; i< temp ; i++){
%>	
		<tr>
			<td><%= %></td>
			<td><%= %></td>
			<td><%= %></td>
			<td><%= %></td>
			<td><%= %></td>
		</tr>
<%
	}
%>		
	</tbody>
	</table>
</body>
</html>
