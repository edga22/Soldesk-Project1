<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="/admin/admin_nav.jsp"></jsp:include>
<div id="deliNav">
	<h3>배송관리</h3><br>
	<div>
	<form>	
	 회원번호로 조회: <input type="number" name="memberID" placeholder="유저 번호" required>
	 <button type="submit" formaction="/order/ordersByMemberID.jsp" class="btn btn-default">검색</button>
	</form>
	<form> 	
	 배송상태로 조회:
	 <input type="number" name="progress" list="select" placeholder="배송상태" required>
		<datalist id="select">
			<option value="1">입금 확인중</option>
			<option value="2">배송준비</option>
			<option value="3">배송시작</option>
			<option value="4">배송완료</option>
			<option value="5">완료</option>
		</datalist> 
	 <button type="submit" formaction="/order/ordersByProgress.jsp" class="btn btn-default">검색</button>
	</form>	
	<form>	
	 주문번호로 조회: <input type="number" name="orderID" placeholder="주문번호" required>
	 <button type="submit" formaction="/order/ordersByOrderID.jsp" class="btn btn-default">검색</button>
	</form>
	</div>	
	<a href="/order/orderAll.jsp" class="btn btn-default">전체검색</a><br><br>
</div>  
</body>
</html>