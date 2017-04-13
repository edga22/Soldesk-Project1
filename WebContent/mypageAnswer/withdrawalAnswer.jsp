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
	<h1>6.회원 탈퇴 하고싶어요.</h1>
	<p>안녕하세요 저희 북cafe의 서비스가 마음에 들지 않으셧나보군요 ㅠㅠ</p><br>
	<p>회원 탈퇴를 하고싶다면 마이페이지에서 회원 탈퇴 탭을 클릭하신후,</p><br>
	<p>회원가입시 입력하셧던 비밀번호를 적으시고 탈퇴 버튼을 누르시면 탈퇴됩니다.</p><br>
	<p>탈퇴시 등록했던 장바구니, 적립 포인트등 모든 정보가 사라지게 되오니 </p><br>
	<p>신중하게 생각하시고 탈퇴하시길 바랍니다. 감사합니다.</p><br>
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