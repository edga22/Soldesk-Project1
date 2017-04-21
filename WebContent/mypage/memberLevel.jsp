<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<title>회원 등급 안내</title>

<jsp:include page="/main_navbar.jsp"/>

<style>
	img{
		width:80px;
		height:auto;
	}
</style>

<div class="container">
	<div class="row content">
	    <div class="col-sm-2 sidenav" style="border:solid 0.1rem; width:16rem;">
		   <jsp:include page="/mypage/mypageMenu.jsp"/>
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

<jsp:include page="/main_foot.jsp"/>
