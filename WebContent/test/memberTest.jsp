<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"
		import="mgr.MemberService" %>
<!DOCTYPE html>
<html>
<%
Member admin = new Member();
admin.setEmail("admin@admin.com");
admin.setPassword("admin");

MemberService memserv = new MemberService();
if(memserv.loginCheck(admin) == 1){%>
<script>
alert("로그인성공");
</script>
<%}else{ %>
<script>
alert("로그인실패");
</script>
<%} %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>