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
				<h1>5.적립된 포인트로 뭘 할 수있나요?</h1>
				<p>안녕하세요 저희 북cafe 에서는 책 구매시 적립되는 포인트를</p><br>
				<p>다양한 서비스에 이용 하실 수 있도록 준비 되어있습니다.</p><br>
				<p>포인트는 현실세계의 돈(원)과 똑같은 개념으로 책한권 구매시 포인트를 이용</p><br>
				<p>할인 혹은 무료구매가 가능합니다.</p><br>
				<p>또한, 다양한 이벤트 혜택을 포인트를 이용하여 받으실 수 있습니다. 감사합니다.</p><br>
				<br>
				<br>
				<br>	
				<a href="mypageQuestion.jsp"><button type="button" class="btn btn-primary">질문페이지로</button></a>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/main_foot.jsp"/>
