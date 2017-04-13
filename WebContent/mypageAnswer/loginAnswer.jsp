<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="/main_navbar.jsp"></jsp:include>
<body>
<div class="container">
<div class="row content">
    <div class="col-sm-2 sidenav">
<jsp:include page="/mypage/mypageMain.jsp"></jsp:include>
</div>
<div class="col-sm-10">
<div id="loginAnswer">
	<h1>1.로그인시 이상한 영어가 뜨면서 로그인이안되요.</h1><br>
	<p>우선 회원가입이나 로그인에서 갑자기 이상한 영어가 뜨는 이유는 데이터베이스 연동이 끊긴경우가 대부분입니다.</p><br>
	<p>로그인이 갑자기 안되는 경우는 천재지변, 일신상의 이유, 컴퓨터상의 오류로 인한 서버에서의 문제인경우가 많습니다.</p><br>
	<p>정상적으로 회원가입이 되지 않으시거나, 회원가입을 했음에도 불구하고 로그인이 되지않고 위와같은 상황이 발생될 시</p><br>
	<p>저희 회사측으로 전화주시면 신속하게 해결해드리도록 노력 하겠습니다.</p>
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