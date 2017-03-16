<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>비밀번호</title>
<style>
.container {
	width:500px;
	margin-top:15%;
}
</style>
</head>
<body>
<div class="container">
<a href="#"><img src="../img/로고.png"/></a><br>
<%
	String name = request.getParameter("name");
	String email = request.getParameter("str_email01")+"@"+request.getParameter("str_email02");
	
	if(name==null||email==null){
		request.getParameter("password");
%>
당신의 비밀번호는 이메일로 전송되었습니다.
<%
	}else %>등록되지 않은 아이디입니다.


<a href="loginPage.jsp"><button type="button" class="btn btn-primary" style="margin-top:30px">로그인 페이지</button></a>
</div>
</body>
</html>