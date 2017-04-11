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
	 배송상태로 조회: <input type="number" name="progress" placeholder="1입금확인,2배송준비,3배송시작,4배송완료,5완료" required>
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