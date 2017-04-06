<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="dao.MemberDao" %>
<%@ page import="dao.DbBasedMemberDao" %>
<!DOCTYPE html>
<html>
<%
	int result = 0;
	Member member = new Member();
	MemberDao findMember = new DbBasedMemberDao();
	
	member.setName("주인장");
	member.setPhone("000-0000-0000");
	
	if(findMember.findIdMember(member) == 1){
%>
	<script>
		alert("아이디찾음");
	</script>
<%}else{ %>
	<script>
		alert("아이디 찾고싶냐 노력해");
	</script>
<%} %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>