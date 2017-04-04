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
	String birth = request.getParameter("brith");
	String ID ="";
	
	if((name != null && !name.equals(""))
			&& (birth != null && !name.equals(""))){
		MemberDao mapper = new DbBasedMemberDao();
		mapper.findIdMember(new Member(name));
%>
	<h2>당신의 아이디는<%=mapper.findIdMember(new Member(ID))%> 입니다.</h2>

<%
	}
%>	
	
	<a href="signInPage.jsp"><button type="button" class="btn btn-primary" style="margin-top:30px">로그인 페이지</button></a>
</div>
</body>
</html>