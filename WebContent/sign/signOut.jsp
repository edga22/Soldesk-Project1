<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
</head>
<body>
<%
	session.setAttribute("ID", null);		// 아이디 제거.
	session.setAttribute("memberID",null);  //멤버 고유번호 제거
%>
<script>
swal({
	title: "성공",
	text: "로그아웃 되었습니다.",
	type: "success"
	},
		function(){
	window.location.replace("/main.jsp");
	});
</script>
</body>
</html>