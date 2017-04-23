<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	   

<jsp:include page="/main_navbar.jsp"/>

<div class="container">
	<div class="col-sm-2">
	   <jsp:include page="/mypage/mypageMenu.jsp"/>
	</div> 
	<div class="col-sm-10">
		<div class="panel panel-default"> 
		  <div class="panel-heading"><h2><i class="glyphicon glyphicon-log-out"></i> 회원  탈퇴</h2></div>
		  <div class="panel-body">
		  	<h4 style="color:red;font-weight: bold;">※ 회원 탈퇴시 적립금, 예치금, 마일리지 등이 자동삭제 됩니다.</h4>
		  	<h4>- 삭제된 정보는 복구할 수 없으며, 재가입하셔야 합니다.</h4>
		  	<h4>- 비밀번호를  재입력하면 탈퇴가 자동으로 처리됩니다.</h4>
		  </div>
		</div>
		<div class="row text-center" style="margin-top:8rem">
			<form action="/mypage/mypageOutProc.jsp" class="form-inline form-group-lg">
	     	  	 <label style="font-size:2rem;">비밀번호 재입력 : </label><input class="form-control" type="password" name="password">
	     	  	<button type="submit" class="btn btn-danger form-control">회원탈퇴</button>
	     	</form>
     	</div>
	</div>	
</div>

<jsp:include page="/main_foot.jsp"/>
