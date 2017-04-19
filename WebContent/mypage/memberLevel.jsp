<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<title>Insert title here</title>
<jsp:include page="/main_navbar.jsp"></jsp:include>
<style>
	img{
		width:80px;
		height:auto;
	}
</style>
</head>
<body>
<div class="container">
<div class="row content">
    <div class="col-sm-2 sidenav" style="border:solid 0.1rem; width:16rem;">
<jsp:include page="/mypage/mypageMain.jsp"></jsp:include>
</div>
<div class="col-sm-10">
<div id="MypageQuestion">
	<p><img src="/img/member/bronze.PNG"> 브론즈등급 2000포인트 이하회원</p><br>
	<p><img src="/img/member/silver.PNG"> 실버등급 2001포인트 이상 5000 포인트 이하회원</p><br>
	<p><img src="/img/member/gold.PNG"> 골드등급 5001포인트 이상 10000포인트 이하회원</p><br>
	<p><img src="/img/member/platinum.PNG"> 플레티넘등급 10001포인트 이상 30000포인트 이하회원</p><br>
	<p><img src="/img/member/diamond.PNG"> 다이아등급 30001포인트 이상 50000포인트 이하회원</p><br>
	<p><img src="/img/member/vip.PNG"> VIP등급 50001 포인트 이상회원</p>
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