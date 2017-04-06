<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="mgr.MemberService" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Member member = new Member();

	member.setName("송성우");
	member.setPhone("01050404946");
	
	MemberService findMember = new MemberService();
	
	out.print(findMember.findIdMember(member));
%>
</body>
</html>