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
				<h3>-Q&A</h3>
					<a href="/mypageAnswer/loginAnswer.jsp">1.로그인시 이상한 영어가 뜨면서 로그인이안되요.</a><br>
					<a href="/mypageAnswer/basketAnswer.jsp">2.로그아웃을 해도 장바구니가 남아있나요?</a><br>
					<a href="/mypageAnswer/nonmemberAnswer.jsp">3.회원가입(로그인)을 안한상태에서 구매는 불가능한건가요?</a><br>
					<a href="/mypageAnswer/newBookAnswer.jsp">4.목록에 없는 책을 사고 싶은데 신청 가능한가요?</a><br>
					<a href="/mypageAnswer/pointAnswer.jsp">5.적립된 포인트로 뭘 할 수있나요?</a><br>
					<a href="/mypageAnswer/withdrawalAnswer.jsp">6.회원 탈퇴 하고싶어요.</a><br>
					<a href="/mypageAnswer/foreginAnswer.jsp">7.재외국인은 어떻게 가입해야하죠?(주소문제)</a><br>
			</div>
		</div>
	</div>
 </div>
</body>
<jsp:include page="/main_foot.jsp"></jsp:include>
</html>