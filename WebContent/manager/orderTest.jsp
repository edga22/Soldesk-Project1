<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
input{
	width: 40rem;
}
li{
	list-style:none;
}
</style>
</head>
<body>

<form action="orderTestResult.jsp">
<ul>
	<li>구매번호: <input type="number" name="purchaseOrderID" required></li>
	<li>회원번호: <input type="number" name="memberID" required></li>
	<li>도서번호: <input type="number" name="bookID" required></li>
	<li>도서수량: <input type="number" name="amount" required></li>
	<li>구매날짜: <input type="text" name="purchaseDate" placeholder="yyyy-mm-dd" required></li>
	<li>배송상태: <input type="number" name="progress" placeholder="1입금확인,2배송준비,3배송시작,4배송완료,5완료" required></li>
	<li><button type="submit" class="btn btn-danger">저장</button></li>
</ul>
</form>


</body>
</html>