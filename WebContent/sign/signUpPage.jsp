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
<div class="container" id="pws">
	<jsp:include page="../logo.jsp"/>
	<ul class="nav nav-tabs">
    	<li class="active"><a data-toggle="tab" href="#logIn">로그인</a></li>
    	<li><a data-toggle="tab" href="#findId">아이디 찾기</a></li>
    	<li><a data-toggle="tab" href="#findPw">비밀번호 찾기</a></li>
    </ul>
	<div class="tab-content">
		<div id="logIn" class="tab-pane fade in active">
			<form action="login.jsp" method="post">
			<div class="form-group">
				<div class="col-sm-12" style="margin:30px 0 15px 0">
					<input type="text" class="form-control" id="id" placeholder="ID를 입력하세요." required />
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-12">
					<input type="password" class="form-control" id="psw" placeholder="패스워드를 입력하세요." required />
				</div>
			</div>
			<div class="form-group">
		 		<div class="col-sm-offset-8 col-sm-10">
		 			<div class="checkbox">
						<label><input type="checkbox" />로그인 유지</label>
					</div>
				</div>
			</div>
			<div class="form-group">
		 		<div class="col-sm-6 center">
		 		   <input type="submit" class="btn btn-primary btn-block" value="로그인" />
		 		</div>
				<div class="col-sm-6 center">
				     <a href="signIn.jsp"><button type="button" class="btn btn-primary btn-block">회원가입</button></a>
				</div>
			</div>
			</form>	
		</div>	
	
		<div id="findId" class="tab-pane fade">
			<h3>아이디를 찾으시나요?</h3>
			가입여부를 확인하시려면 성명과 생년월일를 입력해주세요
			<form action="findIdResult.jsp" method="post">
			<div class="form-group" style="margin-top:10px">
				<label class="control-label col-sm-3" for="name">성명 :</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="name" placeholder="name" required>
				</div>
				<label class="control-label col-sm-3" for="name" style="margin-top:10px">생년월일 :</label>
				<div class="col-sm-9">
					<input type="number" class="form-control" id="" placeholder="ex)19890914" style="margin-top:10px" required>
				</div>
			</div>
			<div class="btn-default">
		 		<div class="col-sm-12">
		 			<input type="submit" class="btn btn-primary" style="margin-top:30px" value="아이디찾기"/>
		 		</div> 		
			</div>
			</form>
		</div>
	
		<div id="findPw" class="tab-pane fade">
			<h3>비밀번호를 찾으시나요?</h3>
			<form action="findPassword.jsp" method="post">
			<div class="form-group">
				<label class="control-label col-sm-3" for="I" style="margin-top:10px">아이디 :</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="ID" placeholder="ID" style="margin-top:10px" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="name" style="margin-top:10px">성명 :</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="name" placeholder="name" style="margin-top:10px" required>
				</div>
				<label class="control-label col-sm-3" for="name" style="margin-top:10px">생년월일 :</label>
				<div class="col-sm-9">
					<input type="number" class="form-control" id="" placeholder="ex)19890914" style="margin-top:10px" required>
				</div>
			</div>
`			<div class="bnt-default">
		 		<div class="col-sm-12">
		 			<input type="submit" class="btn btn-primary" style="margin-top:30px" value="비밀번호 찾기">
		 		</div>
			</div>
			</form>
		</div>		
	</div>
</div>
</body>
</html>