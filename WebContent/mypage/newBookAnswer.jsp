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
    <div class="col-sm-2 sidenav" style="border:solid 0.1rem; width:16rem;">
<jsp:include page="/mypage/mypageMain.jsp"></jsp:include>
</div>
<div class="col-sm-10">
<div id="MypageQuestion">
	<h1>4.목록에 없는 책을 사고 싶은데 신청 가능한가요?</h1>
	<p>안녕하세요 저희 북cafe 에서는 새로운 책 신청을 적극적으로 수용하고있습니다.</p><br>
	<p>저희 북cafe에 회사 전화번호로 연락을 주시면 신속하게 책을 등록 할 수있습니다.</p><br>
	<p>신간 도서를 추천해 주신 분들중 추첨을 통한 이벤트도 진행중이니 많은 참여 부탁드립니다.</p><br>
	<p>감사합니다.</p><br>
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