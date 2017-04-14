<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"
		 import="service.PayService"%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<%
PayService ps = new PayService();
int memberID = (Integer)session.getAttribute("memberID");
Member member = ps.getMember(memberID);
%>
<jsp:include page="/main_navbar.jsp"></jsp:include>
<div class="container" id="game">
<%
if(member.getBonusPoint()>=500){
%>
<hr style="border: solid 0.1rem;"> 
	<div>
	<a href="http://flashgames312.com/emulator/alex-kidd-in-miracle-world/" class="btn btn-default" target="content">알렉스 키드</a>
	<a href="/game/dinos.jsp" class="btn btn-default" target="content">캐딜락과 공룡</a>
	<a href="/game/super.jsp" class="btn btn-default" target="content">슈퍼마리오</a>
	<a href="/game/chess.jsp" class="btn btn-default" target="content">체스</a>
	<a href="/game/aladin.jsp" class="btn btn-default" target="content">알라딘</a>
	</div>
	<hr style="border: solid 0.1rem;">
	<div align="center"> 
	<iframe width="640" scrolling="no" height="480" frameborder="0" name="content"></iframe>
	</div>
<%
}else{
%>	
	<p> 적립된 포인트가 부족합니다. 현재 잔여 포인트는 <%=member.getBonusPoint()%> 입니다. </p>
	<p> 게임시 500 point가 소진됩니다. </p>
<%
}
%>
</div>
<jsp:include page="/main_foot.jsp"></jsp:include>
</body>
</html>