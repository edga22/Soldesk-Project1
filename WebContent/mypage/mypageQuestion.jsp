<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<title>자주하는 질문</title>

<<style>
<!--

-->
</style>

<jsp:include page="/main_navbar.jsp"/>

<div class="container">
	<div class="col-sm-2">
	    <jsp:include page="/mypage/mypageMenu.jsp"/>
	</div>           
	<div class="col-sm-10">
		<div class="panel panel-default"> 
		  <div class="panel-heading"><h2><i class="glyphicon glyphicon-info-sign"></i> 자주 묻는 질문</h2></div>
		  <div class="panel-body">북앤카페 이용시 문의가 많은 질문을 정리하여 안내합니다.</div>
		</div>
	
		<div class="table-responsive">      
	        <table class="table table-hover table-striped">
                <thead>
		            <tr class="info">
	                    <th width="10%" class="text-center">번호</th>
	                    <th>자주 묻는 질문</th>
	                </tr>
	            </thead>
	            <tbody>
		            <tr class="question" data-prod-answer="1">
		                <td class="text-center">1.</td>
		                <td>로그인시 이상한 영어가 뜨면서 로그인이안되요.</td>
		            </tr>
		            <tr id="answer1" style="display:none">
		            	<td></td>
		                <td>
		                	<br>
			                <p>우선 회원가입이나 로그인에서 갑자기 이상한 영어가 뜨는 이유는 데이터베이스 연동이 끊긴경우가 대부분입니다.</p><br>
			                <p>로그인이 갑자기 안되는 경우는 천재지변, 일신상의 이유, 컴퓨터상의 오류로 인한 서버에서의 문제인경우가 많습니다.</p><br>
			                <p>정상적으로 회원가입이 되지 않으시거나, 회원가입을 했음에도 불구하고 로그인이 되지않고 위와같은 상황이 발생될 시</p><br>
			                <p>저희 회사측으로 전화주시면 신속하게 해결해드리도록 노력 하겠습니다.</p><br>
		                </td>
		            </tr>
		             <tr class="question" data-prod-answer="2">
	                    <td class="text-center">2.</td>
	                    <td>로그아웃을 해도 장바구니가 남아있나요?</td>
	                </tr>
	                <tr id="answer2" style="display:none">
	                    <td></td>
		                <td>
		                	<br>
	                        <p>정답부터 말씀드리면 답은 yes입니다.</p><br>
							<p>저희 북cafe에서는 로그아웃을 하여도 아이디 만 서버에서 끊어질 뿐</p><br>
							<p>웹 브라우저를 종료하지 않는 한 장바구니는 그대로 남아있습니다.</p><br>
							<p>단, 로그아웃을 눌렀을시 장바구니에 포함된 책이라고 하더라도 구매는 불가능하오니</p><br>
							<p>이점 양해 부탁드립니다 감사합니다.</p><br>							
	                    </td>
	                </tr>
	                 <tr class="question" data-prod-answer="3">
	                    <td class="text-center">3.</td>
	                    <td>회원가입(로그인)을 안한상태에서 구매는 불가능한건가요?</td>
	                </tr>
	                <tr id="answer3" style="display:none">
	                    <td></td>
		                <td>
		                	<br>
	                        <p>죄송합니다 고객님. 저희 북cafe에서는 회원가입후 로그인을 하지않았을경우</p><br>
							<p>구매가 불가능합니다. 단 장바구니에 추가 미리 시켜놓으셧을경우 회원가입후 로그인</p><br>
							<p>하면 그대로 남아있어 서비스를 계속 이용 하실 수 있습니다.</p><br>
							<p>또한 포인트가 적립되고, 할인등 다양한 이벤트 혜택을 받으실 수 있습니다. 가입하셔도 가입비는 받지않습니다.</p><br>
	                    </td>
	                </tr>
	                 <tr class="question" data-prod-answer="4">
	                    <td class="text-center">4.</td>
	                    <td>목록에 없는 책을 사고 싶은데 신청 가능한가요?</td>
	                </tr>
	                <tr id="answer4" style="display:none">
	                    <td></td>
		                <td>
		                	<br>
	                       	<p>안녕하세요 저희 북cafe 에서는 새로운 책 신청을 적극적으로 수용하고있습니다.</p><br>
							<p>저희 북cafe에 회사 전화번호로 연락을 주시면 신속하게 책을 등록 할 수있습니다.</p><br>
							<p>신간 도서를 추천해 주신 분들중 추첨을 통한 이벤트도 진행중이니 많은 참여 부탁드립니다.</p><br>
							<p>감사합니다.</p><br>
	                    </td>
	                </tr>
	                 <tr class="question" data-prod-answer="5">
	                    <td class="text-center">5.</td>
	                    <td>적립된 포인트로 뭘 할 수있나요?</td>
	                </tr>
	                <tr id="answer5" style="display:none">
	                    <td></td>
		                <td>
		                	<br>
	                        <p>안녕하세요 저희 북cafe 에서는 책 구매시 적립되는 포인트를</p><br>
							<p>다양한 서비스에 이용 하실 수 있도록 준비 되어있습니다.</p><br>
							<p>포인트는 현실세계의 돈(원)과 똑같은 개념으로 책한권 구매시 포인트를 이용</p><br>
							<p>할인 혹은 무료구매가 가능합니다.</p><br>
							<p>또한, 다양한 이벤트 혜택을 포인트를 이용하여 받으실 수 있습니다. 감사합니다.</p><br>
	                    </td>
	                </tr>
	                 <tr class="question" data-prod-answer="6">
	                    <td class="text-center">6.</td>
	                    <td>회원 탈퇴 하고싶어요.</td>
	                </tr>
	                <tr id="answer6" style="display:none">
	                    <td></td>
		                <td>
		                	<br>
	                        <p>안녕하세요 저희 북cafe의 서비스가 마음에 들지 않으셧나보군요 ㅠㅠ</p><br>
							<p>회원 탈퇴를 하고싶다면 마이페이지에서 회원 탈퇴 탭을 클릭하신후,</p><br>
							<p>회원가입시 입력하셧던 비밀번호를 적으시고 탈퇴 버튼을 누르시면 탈퇴됩니다.</p><br>
							<p>탈퇴시 등록했던 장바구니, 적립 포인트등 모든 정보가 사라지게 되오니 </p><br>
							<p>신중하게 생각하시고 탈퇴하시길 바랍니다. 감사합니다.</p><br>
	                    </td>
	                </tr>
	                <tr class="question" data-prod-answer="7">
	                    <td class="text-center">7.</td>
	                    <td>재외국인은 어떻게 가입해야하죠?(주소문제)(Alien Registration)</td>
	                </tr>
	                <tr id="answer7" style="display:none">
	                    <td></td>
		                <td>
	                    	<br>
	                    	<p>It is Korean only. Thank you.</p><br>
	                    	<p>韓国人専用です。 ありがとうございます。</p><br>
	                        <p>외국인 고객님의 경우 회원가입시 큰 불편을 겪으시는데요.</p><br>
							<p>다른 것 보다도 주소입력시 불편을 겪으실것으로 예상합니다.</p><br>
							<p>이 경우에는 전화를 주시면 일시적으로 우편번호 주소창을 풀어드려 가입이 원할하시게 도와드리겠습니다.</p><br>
							<p>글로벌 사회에 맞춰 외국인들을 위한 서비스는 최대한 빠르게 활성화될 수 있도록 노력하겠습니다.</p><br>
							<p>이점 양해 부탁드립니다 감사합니다.</p><br>
	                    </td>
	                </tr>
                </tbody>
	        </table>
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
