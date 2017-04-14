<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"
		 import="service.PayService"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마리오 카트</title>
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
int point = member.getBonusPoint()-500;
member.setBonusPoint(point);
ps.updatePoint(member);
%>
<p> 키보드 방향키만 사용</p>
<p> 키보드가 안될시 마우스로 게임화면 클릭</p>
<embed src="http://flashgames312.com/1/mario-go-kart/Mario-Go-Kart.swf" menu="false" quality="high" width="550" height="400" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer">

</body>
</html>