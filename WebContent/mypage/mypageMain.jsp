<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="service.MemberService" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>마이페이지</title>
</head>                 
<body>

<jsp:include page="/main_navbar.jsp"></jsp:include>



<div class="container">
<div class="row">
	<div class="col-sm-2">
	<jsp:include page="/mypage/mypageMain_nav.jsp"/>
	</div>
	<div class="col-sm-10">
	<p>마이 페이지 입니다.</p>
	</div>
</div>
</div>



<jsp:include page="/main_foot.jsp"></jsp:include>                                     
</body>
</html>