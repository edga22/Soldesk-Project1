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
<title>Insert title here</title>
<style>
</style>
</head>
<body>
<div class="container">
<jsp:include page="img/logo.jsp"/>
탈퇴 하시려면 한번더 아이디 비밀번호를 입력하세요.
<form>
	<div class="form-group">
		<div class="col-sm-12" style="margin-top:30px">
			<input type="text" class="form-control" id="id" placeholder="ID" required>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-12" style="margin-top:15px">
			<input type="password" class="form-control" id="pw" placeholder="password" required>
		</div>
	</div>
	<div class="form-group">
 		<div class="col-sm-12" style="margin-top:30px">
 		<button type="submit" class="btn btn-primary btn-block">회원 탈퇴</button>
 	</div>
</div>
</form>
</div>
</body>
</html>