<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="service.MemberService"%>
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
<div class="container">
<jsp:include page="../logo.jsp"/>
<%
	request.setCharacterEncoding("utf-8");
	String ID = "";
	String name = "";
	String phone = "";
	
	if(request.getParameter("ID") != null && !request.getParameter("ID").equals("")){
		ID = request.getParameter("ID");	
	}
	if(request.getParameter("name") != null && !request.getParameter("name").equals("")){
		name = request.getParameter("name");	
	}
	if(request.getParameter("phone") != null && !request.getParameter("phone").equals("")){
		phone = request.getParameter("phone");	
	}
	
	Member member = new Member();
	MemberService mapper = new MemberService();
	
	if((ID != null && !ID.equals(""))
			&& (name != null && !name.equals(""))
			&& (phone != null && !phone.equals(""))){	// 비밀번호 찾기.
		member.setEmail(ID);
		member.setName(name);
		member.setPhone(phone);
	
		Member mem = mapper.findPwMember(member);
		
	if(mem != null && !mem.equals("")){
%>
	<div class="row" id="wrap">
	
	<h4 style="text-align:center"><%=ID %>님의 비밀번호는 <%=mem.getPassword() %>입니다.</h4>
	<div class=col-sm-12>
	<a href="signInPage.jsp"><button type="button" class="btn btn-primary" style="margin-top:30px">로그인 페이지</button></a>
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
	}
%>
</div>
</div>
</body>
</html>