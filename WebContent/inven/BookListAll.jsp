<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>책 전체 조회</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<h2>전체 도서 검색 결과</h2>
	<table class="table table-condensed">
	 <thead>
	  <tr>
		<th>책 제목</th>
		<th>출판사</th>
		<th>저 자</th>
		<th>금 액(원)</th>
	  </tr>
	 </thead>
	 <tbody>
<% 
int temp=4;
for(int i=0;i<temp;i++){	
%>	 	
	  <tr>
		<th><%=i  %></th>
		<th><%=i  %></th>
		<th><%=i  %></th>
		<th><%=i  %></th>
	  </tr>
<%
}
%>
	 </tbody>
	</table>

</body>
</html>