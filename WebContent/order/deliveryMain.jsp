<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>배송관리 시스템</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="/order/orderMain_nav.jsp"></jsp:include>
<div class="container" id="delivery">
	<input type="number" name="progress" list="select" placeholder="배송상태" required>
		<datalist id="select">
			<option value="1">입금 확인중</option>
			<option value="2">배송준비</option>
			<option value="3">배송시작</option>
			<option value="4">배송완료</option>
			<option value="5">완료</option>
			<option value="6">교환접수</option>
			<option value="7">환불접수</option>
			<option value="8">환불완료</option>
		</datalist> 
	<button class="btn btn-warning btn-xs glyphicon glyphicon-floppy-saved">수정</button>	
<hr style="border: solid 0.1rem;">  
</div>
</body>
</html>