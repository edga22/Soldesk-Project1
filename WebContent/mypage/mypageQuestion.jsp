<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/main_navbar.jsp"/>

<div class="container">
	<div class="col-sm-2">
	    <jsp:include page="/mypage/mypageMenu.jsp"/>
	</div>           
	<div class="col-sm-10">
		<div id="MypageQuestion">
			<h3>-Q&#38;A</h3>			
		</div>
	
		<div class="table-responsive">      
	        <table class="table table-hover">
                <thead>
		            <tr class="info">
	                    <th>번호</th>
	                    <th>자주 묻는 질문</th>
	                </tr>
	            </thead>
	            <tbody>
		            <tr class="question" data-prod-answer="1">
		                <td>1.</td>
		                <td>로그인시 이상한 영어가 뜨면서 로그인이안되요.</td>
		            </tr>
		            <tr id="answer1" style="display:none">
		                <td colspan="2">
			                <p>우선 회원가입이나 로그인에서 갑자기 이상한 영어가 뜨는 이유는 데이터베이스 연동이 끊긴경우가 대부분입니다.</p><br>
			                <p>로그인이 갑자기 안되는 경우는 천재지변, 일신상의 이유, 컴퓨터상의 오류로 인한 서버에서의 문제인경우가 많습니다.</p><br>
			                <p>정상적으로 회원가입이 되지 않으시거나, 회원가입을 했음에도 불구하고 로그인이 되지않고 위와같은 상황이 발생될 시</p><br>
			                <p>저희 회사측으로 전화주시면 신속하게 해결해드리도록 노력 하겠습니다.</p>
		                </td>
		            </tr>
		             <tr class="question" data-prod-answer="2">
	                    <td>2.</td>
	                    <td>로그아웃을 해도 장바구니가 남아있나요?</td>
	                </tr>
	                <tr id="answer2" style="display:none">
	                    <td colspan="2">
	                        <p>우선 회원가입이나 로그인에서 갑자기 이상한 영어가 뜨는 이유는 데이터베이스 연동이 끊긴경우가 대부분입니다.</p><br>
	                        <p>로그인이 갑자기 안되는 경우는 천재지변, 일신상의 이유, 컴퓨터상의 오류로 인한 서버에서의 문제인경우가 많습니다.</p><br>
	                        <p>정상적으로 회원가입이 되지 않으시거나, 회원가입을 했음에도 불구하고 로그인이 되지않고 위와같은 상황이 발생될 시</p><br>
	                        <p>저희 회사측으로 전화주시면 신속하게 해결해드리도록 노력 하겠습니다.</p>
	                    </td>
	                </tr>
	                 <tr class="question" data-prod-answer="3">
	                    <td>3.</td>
	                    <td>회원가입(로그인)을 안한상태에서 구매는 불가능한건가요?</td>
	                </tr>
	                <tr id="answer3" style="display:none">
	                    <td colspan="2">
	                        <p>우선 회원가입이나 로그인에서 갑자기 이상한 영어가 뜨는 이유는 데이터베이스 연동이 끊긴경우가 대부분입니다.</p><br>
	                        <p>로그인이 갑자기 안되는 경우는 천재지변, 일신상의 이유, 컴퓨터상의 오류로 인한 서버에서의 문제인경우가 많습니다.</p><br>
	                        <p>정상적으로 회원가입이 되지 않으시거나, 회원가입을 했음에도 불구하고 로그인이 되지않고 위와같은 상황이 발생될 시</p><br>
	                        <p>저희 회사측으로 전화주시면 신속하게 해결해드리도록 노력 하겠습니다.</p>
	                    </td>
	                </tr>
	                 <tr class="question" data-prod-answer="4">
	                    <td>4.</td>
	                    <td>목록에 없는 책을 사고 싶은데 신청 가능한가요?</td>
	                </tr>
	                <tr id="answer4" style="display:none">
	                    <td colspan="2">
	                        <p>우선 회원가입이나 로그인에서 갑자기 이상한 영어가 뜨는 이유는 데이터베이스 연동이 끊긴경우가 대부분입니다.</p><br>
	                        <p>로그인이 갑자기 안되는 경우는 천재지변, 일신상의 이유, 컴퓨터상의 오류로 인한 서버에서의 문제인경우가 많습니다.</p><br>
	                        <p>정상적으로 회원가입이 되지 않으시거나, 회원가입을 했음에도 불구하고 로그인이 되지않고 위와같은 상황이 발생될 시</p><br>
	                        <p>저희 회사측으로 전화주시면 신속하게 해결해드리도록 노력 하겠습니다.</p>
	                    </td>
	                </tr>
	                 <tr class="question" data-prod-answer="5">
	                    <td>5.</td>
	                    <td>적립된 포인트로 뭘 할 수있나요?</td>
	                </tr>
	                <tr id="answer5" style="display:none">
	                    <td colspan="2">
	                        <p>우선 회원가입이나 로그인에서 갑자기 이상한 영어가 뜨는 이유는 데이터베이스 연동이 끊긴경우가 대부분입니다.</p><br>
	                        <p>로그인이 갑자기 안되는 경우는 천재지변, 일신상의 이유, 컴퓨터상의 오류로 인한 서버에서의 문제인경우가 많습니다.</p><br>
	                        <p>정상적으로 회원가입이 되지 않으시거나, 회원가입을 했음에도 불구하고 로그인이 되지않고 위와같은 상황이 발생될 시</p><br>
	                        <p>저희 회사측으로 전화주시면 신속하게 해결해드리도록 노력 하겠습니다.</p>
	                    </td>
	                </tr>
	                 <tr class="question" data-prod-answer="6">
	                    <td>6.</td>
	                    <td>회원 탈퇴 하고싶어요.</td>
	                </tr>
	                <tr id="answer6" style="display:none">
	                    <td colspan="2">
	                        <p>우선 회원가입이나 로그인에서 갑자기 이상한 영어가 뜨는 이유는 데이터베이스 연동이 끊긴경우가 대부분입니다.</p><br>
	                        <p>로그인이 갑자기 안되는 경우는 천재지변, 일신상의 이유, 컴퓨터상의 오류로 인한 서버에서의 문제인경우가 많습니다.</p><br>
	                        <p>정상적으로 회원가입이 되지 않으시거나, 회원가입을 했음에도 불구하고 로그인이 되지않고 위와같은 상황이 발생될 시</p><br>
	                        <p>저희 회사측으로 전화주시면 신속하게 해결해드리도록 노력 하겠습니다.</p>
	                    </td>
	                </tr>
	                <tr class="question" data-prod-answer="7">
	                    <td>7.</td>
	                    <td>재외국인은 어떻게 가입해야하죠?(주소문제)</td>
	                </tr>
	                <tr id="answer7" style="display:none">
	                    <td colspan="2">
	                        <p>우선 회원가입이나 로그인에서 갑자기 이상한 영어가 뜨는 이유는 데이터베이스 연동이 끊긴경우가 대부분입니다.</p><br>
	                        <p>로그인이 갑자기 안되는 경우는 천재지변, 일신상의 이유, 컴퓨터상의 오류로 인한 서버에서의 문제인경우가 많습니다.</p><br>
	                        <p>정상적으로 회원가입이 되지 않으시거나, 회원가입을 했음에도 불구하고 로그인이 되지않고 위와같은 상황이 발생될 시</p><br>
	                        <p>저희 회사측으로 전화주시면 신속하게 해결해드리도록 노력 하겠습니다.</p>
	                    </td>
	                </tr>
                </tbody>
	        </table>
	     </div>
	     <div>
				<a href="loginAnswer.jsp">1.로그인시 이상한 영어가 뜨면서 로그인이안되요.</a><br>
				<a href="basketAnswer.jsp">2.로그아웃을 해도 장바구니가 남아있나요?</a><br>
				<a href="nonmemberAnswer.jsp">3.회원가입(로그인)을 안한상태에서 구매는 불가능한건가요?</a><br>
				<a href="newBookAnswer.jsp">4.목록에 없는 책을 사고 싶은데 신청 가능한가요?</a><br>
				<a href="pointAnswer.jsp">5.적립된 포인트로 뭘 할 수있나요?</a><br>
				<a href="withdrawalAnswer.jsp">6.회원 탈퇴 하고싶어요.</a><br>
				<a href="foreginAnswer.jsp">7.재외국인은 어떻게 가입해야하죠?(주소문제)</a><br>
		</div>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function(){
	$(".question").click(function(e){
		e.preventDefault();
		$('#answer'+$(this).attr('data-prod-answer')).toggle();   
	});
});
</script>
<jsp:include page="/main_foot.jsp"/>
