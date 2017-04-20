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
<jsp:include page="mypageMain.jsp"></jsp:include>
</div>
<div class="col-sm-10">
<div id="MypageQuestion">
	<h1>7.재외국인은 어떻게 가입해야하죠?(주소 문제)</h1>
	<p>외국인 고객님의 경우 회원가입시 큰 불편을 겪으시는데요.</p><br>
	<p>다른 것 보다도 주소입력시 불편을 겪으실것으로 예상합니다.</p><br>
	<p>이 경우에는 전화를 주시면 일시적으로 우편번호 주소창을 풀어드려 가입이 원할하시게 도와드리겠습니다.</p><br>
	<p>글로벌 사회에 맞춰 외국인들을 위한 서비스는 최대한 빠르게 활성화될 수 있도록 노력하겠습니다.</p><br>
	<p>이점 양해 부탁드립니다 감사합니다.</p><br>
	<br>
	<br>
	<br>	
	<a href="mypageQuestion.jsp"><button type="button" class="btn btn-primary">질문페이지로</button></a>
</div>
</div>
</div>
</div>
</body>
<jsp:include page="/main_foot.jsp"></jsp:include>
</html>