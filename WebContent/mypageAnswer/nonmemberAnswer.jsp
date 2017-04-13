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
	<h1>3.회원가입(로그인)을 안한상태에서 구매는 불가능한건가요?</h1>
	<p>죄송합니다 고객님. 저희 북cafe에서는 회원가입후 로그인을 하지않았을경우</p><br>
	<p>구매가 불가능합니다. 단 장바구니에 추가 미리 시켜놓으셧을경우 회원가입후 로그인</p><br>
	<p>하면 그대로 남아있어 서비스를 계속 이용 하실 수 있습니다.</p><br>
	<p>또한 포인트가 적립되고, 할인등 다양한 이벤트 혜택을 받으실 수 있습니다. 가입하셔도 가입비는 받지않습니다.</p><br>
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