<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>로그인 페이지입니다.</title>
<style type="text/css">
.container {
	width:500px;
	margin-top:10%;
}
</style>
</head>
<body>
<div class="container">
	<jsp:include page="../logo.jsp"/>
	<ul class="nav nav-tabs">
    	<li><a data-toggle="tab" href="#logIn">로그인</a></li>
    	<li><a data-toggle="tab" href="#findId">아이디 찾기</a></li>
    	<li><a data-toggle="tab" href="#findPw">비밀번호 찾기</a></li>
    </ul>
<form class="form-horizontal" method="post"action="#">
<div class="tab-content">
<div id="logIn" class="tab-pane fade">
	<div class="form-group">
		<div class="col-sm-12" style="margin-top:30px">
			<input type="text" class="form-control" id="id" placeholder="ID" required>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-12">
			<input type="password" class="form-control" id="psw" placeholder="password" required>
		</div>
	</div>
	<div class="form-group">
 		<div class="col-sm-offset-6 col-sm-10">
 			<div class="checkbox">
				<label><input type="checkbox">비밀번호 기억</label>
			</div>
		</div>
	</div>
	<div class="form-group">
 		<div class="col-sm-12">
 		<input type="submit" class="btn btn-primary btn-block" value="로그인">
 	</div>
	</div>
	<div class="btn-default">
	<a href="signIn.jsp"><button type="button" class="btn btn-primary">회원가입</button></a>
	</div>
</div>



<div id="findId" class="tab-pane fade">
	<h3>아이디를 찾으시나요?</h3>
	가입여부를 확인하시려면 성명과 생년월일를 입력해주세요
	<div class="form-group" style="margin-top:10px">
		<label class="control-label col-xs-3" for="name">성명 :</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="name" placeholder="name" required>
		</div>
		<label class="control-label col-xs-3" for="name" style="margin-top:10px">생년월일 :</label>
		<div class="col-sm-9">
			<input type="number" class="form-control" id="" placeholder="ex)19890914" style="margin-top:10px" required>
		</div>
	</div>

	<div class="btn-default">
 		<div class="col-sm-12">
 		<a href="findId.jsp"><input type="submit" class="btn btn-primary" value="아이디찾기"/></a>
 		</div>
	</div>
</div>




<div id="findPw" class="tab-pane fade">
	<h3>비밀번호를 찾으시나요?</h3>
	<div class="form-group">
		<label class="control-label col-xs-2" for="I">아이디 :</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="ID" placeholder="ID" required>
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-xs-2" for="name">성명 :</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="name" placeholder="name" required>
		</div>
	</div>
	
	<div class="col-sm-4">
	<button type="button" class="btn btn-default">휴대폰 인증</button>
	</div>
	<div class="col-sm-4">
	<button type="button" class="btn btn-default">아이핀 인증</button>
	</div>
	<div class="col-sm-4">
	<input type="checkbox" id="phoneCheck"/> 확인되었습니다.
	</div>
	<div class="bnt-default">
 		<div class="col-sm-12">
 			<a href="passwordInput.jsp"><input type="submit" class="btn btn-primary" style="margin-top:30px" value="비밀번호 찾기"></a>
 		</div>
	</div>
	</div>
</div>
</form>
</div>


</body>
</html>