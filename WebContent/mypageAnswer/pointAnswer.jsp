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
	<h1>5.적립된 포인트로 뭘 할 수있나요?</h1>
	<p>안녕하세요 저희 북cafe 에서는 책 구매시 적립되는 포인트를</p><br>
	<p>다양한 서비스에 이용 하실 수 있도록 준비 되어있습니다.</p><br>
	<p>포인트는 현실세계의 돈(원)과 똑같은 개념으로 책한권 구매시 포인트를 이용</p><br>
	<p>할인 혹은 무료구매가 가능합니다.</p><br>
	<p>또한, 다양한 이벤트 혜택을 포인트를 이용하여 받으실 수 있습니다. 감사합니다.</p><br>
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