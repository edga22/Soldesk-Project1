<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="mgr.MemberService" %>
<%@ page import="dao.MemberDao" %>
<%@ page import="dao.DbBasedMemberDao" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	
	MemberDao test = new DbBasedMemberDao();
	Member member  = new Member();
	member.setEmail("pdords@naver.com");
	
	boolean check = test.IdCheck(member);
	
	if(check==true){
		out.print("중복임");
	}else{
		out.print("중복아님");
	}
%>
</body>
</html>