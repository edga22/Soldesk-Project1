<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="mgr.MemberService" %>
<%@ page import="dao.MemberDao" %>
<%@ page import="dao.DbBasedMemberDao" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
.container {
	width:500px;
	margin-top:10%;
}
</style>
</head>
<body>
<div class="container" id="pws4">
	<jsp:include page="../logo.jsp"/>
<%	
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	
	Member member = new Member();
	
	if((name != null && !name.equals(""))
			&& (phone != null && !phone.equals(""))){
		member.setName(name);
		member.setPhone(phone);
		MemberDao mapper = new DbBasedMemberDao();
		
		member = mapper.findIdMember(member);
%>
	<h2>당신의 아이디는<%=member.getEmail() %> 입니다.</h2>
	
	<a href="signInPage.jsp"><button type="button" class="btn btn-primary" style="margin-top:30px">로그인 페이지</button></a>
<%
	}else{
%>	
	<script>
		alert("등록된 회원이 아닙니다.");
		window.location.replace("signInPage.jsp");
	</script>
<%} %>
	
</div>
</body>
</html>