<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	   

<jsp:include page="/main_navbar.jsp"/>

<div class="container">
	<div class="col-sm-2">
	   <jsp:include page="/mypage/mypageMenu.jsp"/>
	</div> 
	<div class="col-sm-10">
	<form action="/mypage/mypageOutProc.jsp">
     	  <h3> -회원 탈퇴시 적립금,예치금,마일리지 등이 자동삭제 됩니다.</h3>
     	   비밀번호:<input type="password" name="password">
     	  <button type="submit" class="btn btn-danger">회원탈퇴</button>
     	</form>
	</div>	
</div>

<jsp:include page="/main_foot.jsp"/>
