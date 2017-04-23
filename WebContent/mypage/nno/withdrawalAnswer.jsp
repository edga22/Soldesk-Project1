<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<title>마이페이지 자주묻는질문</title>
         
<jsp:include page="/main_navbar.jsp"/>

<div class="container">
	<div class="row content">
	    <div class="col-sm-2 sidenav" style="border:solid 0.1rem; width:16rem;">
	       <jsp:include page="/mypage/mypageMain.jsp"/>
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
				<a href="mypageQuestion.jsp"><button type="button" class="btn btn-primary">질문페이지로</button></a>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/main_foot.jsp"/>
