<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="service.MemberService"%>
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
	String name = "";
	String phone = "";	

	if(request.getParameter("name") != null && !request.getParameter("name").equals("")){
		name = request.getParameter("name");
	}
	if(request.getParameter("phone") != null && !request.getParameter("phone").equals("")){
		phone = request.getParameter("phone");
	}
	
	Member member = new Member();
	
	if((name != null && !name.equals(""))
			&& (phone != null && !phone.equals(""))){	// id찾기
		member.setName(name);
		member.setPhone(phone);
		
		MemberService mapper = new MemberService();
		
		member = mapper.findIdMember(member);
	if(member != null && !member.equals("")){
%>
	<h4>당신의 아이디는<%=member.getEmail()%> 입니다.</h4>
	
	<a href="signInPage.jsp"><button type="button" class="btn btn-primary" style="margin-top:30px">로그인 페이지</button></a>
<%
	}else{
%>	
	<script>
		alert("등록된 회원이 아닙니다.");
		window.location.replace("signInPage.jsp");
	</script>
<%}
		}%>
</div>
</body>
</html>