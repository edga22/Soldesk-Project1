<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"
		 import="service.MemberService"
		 import="service.UserInquireService"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>회원탈퇴</title>
<style>
#out{
border: 1px solid #000; 
width:50rem;
margin-top:5%;
text-align:center;
}
#out2{
border:none;
width:16rem;
margin-top:2%;

}
</style> 
</head>
<body>
<%
int memberID = (Integer)session.getAttribute("memberID");

MemberService ms = new MemberService();
UserInquireService us = new UserInquireService();

Member member= ms.getMember(memberID);

String pw = request.getParameter("password");
if(pw!=null &&!pw.equals("")){

if(pw.equals(member.getPassword())){	
	us.delUserInquireAsk(memberID);	
	ms.getoutMember(memberID);
	session.invalidate();
	
%>
<jsp:include page="../logo.jsp"/>
<div class="container" id="out">
	<h4>그동안 BookCafe를 이용해주셔서 감사합니다.</h4>
	<p>앞으로 더 나은 서비스를 제공할수 있도록 최선을 다하겠습니다.</p>
	<p>서비스 개선을 위한 의견이나 제안을 master@bookncafe로 보내주시면</p>
	<p>향후 서비스 개선 활동에 반영하도록 하겠습니다. 감사합니다.</p>
</div>
<div class="container" id="out2">
<a href="/main.jsp"><button type="button" class="btn btn-danger">메인화면으로</button></a>
</div>
<%
}
}else{
%>
<script>
	alert("비밀번호가 일치하지않습니다.");
	window.location.replace("/mypage/mypageOut.jsp");
</script>
<jsp:include page="/mypage/mypageOut.jsp"/>

<%
}
%>
</body>
</html>