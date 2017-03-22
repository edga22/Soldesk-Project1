<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>마이페이지</title>
</head>
<body>
<div class="container">
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <h2>My Account</h2>
      <br>
      <h3>주문내역</h3>
      <h4><a href="MypageorderMod.jsp"		target="content">주문조회/변경/취소</a></h4>
      <h4><a href="MypageRefund.jsp"		target="content">반품/교환내역</a></h4>
      <br>
      <br>
      <h3>개인정보관리</h3>
      <h4><a href="Mypagemodify.jsp"		target="content">개인정보 수정</a></h4>
      <h4><a href="MypageEvent.jsp"			target="content">이벤트 당첨 내역</a></h4>
      <h4><a href="MypagePoint.jsp"			target="content">포인트 조회</a></h4>
      <h4><a href="Mypageout.jsp"			target="content">회원 탈퇴</a></h4>
      <br>
      <br>
      <h3>고객센터</h3>
      <h4><a href="MypageQuestion.jsp"		target="content">자주 묻는 질문</a></h4>
      <h4><a href="MypageUserInquire.jsp"	target="content">1:1문의</a></h4>
    </div> 
    <div class="col-sm-10">
<iframe name="content"style="border:none;width:100%;height:75rem;"></iframe>
    </div>
</div>
</div>
</body>
</html>