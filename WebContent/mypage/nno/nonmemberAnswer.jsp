<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/main_navbar.jsp"/>

<div class="container">
	<div class="row content">
	    <div class="col-sm-2 sidenav" style="border:solid 0.1rem; width:16rem;">
		  <jsp:include page="/mypage/mypageMain.jsp"/>
		</div>
		<div class="col-sm-10">
			<div id="MypageQuestion">
				<h1>3.회원가입(로그인)을 안한상태에서 구매는 불가능한건가요?</h1>
				<p>죄송합니다 고객님. 저희 북cafe에서는 회원가입후 로그인을 하지않았을경우</p><br>
				<p>구매가 불가능합니다. 단 장바구니에 추가 미리 시켜놓으셧을경우 회원가입후 로그인</p><br>
				<p>하면 그대로 남아있어 서비스를 계속 이용 하실 수 있습니다.</p><br>
				<p>또한 포인트가 적립되고, 할인등 다양한 이벤트 혜택을 받으실 수 있습니다. 가입하셔도 가입비는 받지않습니다.</p><br>
				<br>
				<br>
				<br>	
				<a href="mypageQuestion.jsp"><button type="button" class="btn btn-primary">질문페이지로</button></a>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/main_foot.jsp"/>
