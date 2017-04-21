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
<title>마이페이지 회원탈퇴</title>
</head>   
<body>

<jsp:include page="/main_navbar.jsp"></jsp:include>
<div class="container">
<div class="col-sm-2">
<jsp:include page="/mypage/mypageMain_nav.jsp"/>
</div> 
		<div class="col-sm-10">
		<form action="/mypage/mypageOutProc.jsp">
      	  <h3> -회원 탈퇴시 적립금,예치금,마일리지 등이 자동삭제 됩니다.</h3>
      	   비밀번호:<input type="password" name="password">
      	  <button type="submit" class="btn btn-danger">회원탈퇴</button>
      	</form>
		</div>	
	</div>
<jsp:include page="/main_foot.jsp"></jsp:include>

</body>
</html>