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

      <h2>이벤트 당첨 내역</h2>
      <h3>-고객님께서 당첨되신 이벤트 내역을 보여드립니다.</h3>
      <div align="right">
     <button type="button" class="btn btn-primary">진행중인 이벤트</button>
       </div>
      <table class="table table-hover">
	<thead>
		<tr>
			<th>이벤트명</th>
			<th>이벤트기간</th>
			<th>발표일</th>
			<th>경품명</th>
			<th>당첨발표</th>
		</tr>
	</thead>
	<tbody>
<%  
	int temp =1;
	for(int i = 0; i< temp ; i++){
%>	
		<tr>
			<td><%="java자바" %></td>
			<td><%="2017-01-12~2017-01-31"%></td>
			<td><%="2017-01-18"%></td>
			<td><%="java의정석" %></td>
			<td><%="2017-02-18" %></td>
		</tr>
<%
	}
%>		
			
	</tbody>
	</table>
 
</body>
</html>