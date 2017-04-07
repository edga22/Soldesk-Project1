<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="mgr.MemberService" %>
<%@ page import="dao.MemberDao" %>
<%@ page import="dao.DbBasedMemberDao" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container {
	width:500px;
	margin-top:10%;
}
</style>
</head>
<body>
<div class="container" id="pws3">
<jsp:include page="../logo.jsp"/>

	<div class="row" id="wrap">
<%
	String ID = request.getParameter("ID");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	
	Member member = new Member();
	
	if((ID != null && !ID.equals(""))
			&& (name != null && !name.equals("")
			&& (phone != null && !phone.equals("")))){
		member.setEmail(ID);
		member.setName(name);
		member.setPhone(phone);
		
		MemberDao mapper = new DbBasedMemberDao();
		
		member = mapper.findPwMember(member);
%>
	    <div class="col-md-12">
			<%=ID %>님의 비밀번호는<%=member.getPassword() %> 입니다
		</div>
	</div>
<%
	}else{
%>
	<script>
		alert("등록되지 않은 회원 입니다.");
		window.location.replace("signInPage.jsp");
	</script>
<%	
	}
%>

<a href="signInPage.jsp"><button type="button" class="btn btn-primary" style="margin-top:30px">로그인 페이지</button></a>
</div>
</body>
</html>