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
	
	member.setEmail("pdords@naver.com");
	member.setPassword("djwjdjs");
	member.setName("박원서");
	member.setPostCode(12321);
	member.setAddress("없어시 없어구 없어동 없어마을 없어호");
	member.setPhone("123393959");
	
	MemberService memserv = new MemberService();
	
	if(memserv.addMember(member) == 1){
		
%>
	<script>
	alert("회원가입");
	</script>
<%	
	}else{
%>
	<script>
	alert("가입안됨");
	</script>
<% 
	}
%>
</body>
</html>