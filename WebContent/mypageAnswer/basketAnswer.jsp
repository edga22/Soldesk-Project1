<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>마이페이지 자주묻는질문</title>
</head>           
<jsp:include page="/main_navbar.jsp"></jsp:include>
<body>
<div class="container">
<div class="row content">
    <div class="col-sm-2 sidenav">
<jsp:include page="/mypage/mypageMain.jsp"></jsp:include>
</div>
<div class="col-sm-10">
<div id="MypageQuestion">
	<h1>2.로그아웃을 해도 장바구니가 남아있나요?</h1>
	<p>정답부터 말씀드리면 답은 yes입니다.</p><br>
	<p>저희 북cafe에서는 로그아웃을 하여도 아이디 만 서버에서 끊어질 뿐</p><br>
	<p>웹 브라우저를 종료하지 않는 한 장바구니는 그대로 남아있습니다.</p><br>
	<p>단, 로그아웃을 눌렀을시 장바구니에 포함된 책이라고 하더라도 구매는 불가능하오니</p><br>
	<p>이점 양해 부탁드립니다 감사합니다.</p><br>
	<br>
	<br>
	<br>	
	<a href="/mypage/mypageQuestion.jsp"><button type="button" class="btn btn-primary">질문페이지로</button></a>
</div>
</div>
</div>
</div>
</body>
<jsp:include page="/main_foot.jsp"></jsp:include>
</html>