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
	response.setCharacterEncoding("utf-8");
	String ID = request.getParameter("str_email01")+"@"+request.getParameter("str_email02");
	String pw = request.getParameter("psw");
	String pw2 = request.getParameter("psw2");
	String name = request.getParameter("name");
	int postCode = Integer.parseInt(request.getParameter("postCode"));
	String address = request.getParameter("address1")+" "+request.getParameter("address2");
	String phone = request.getParameter("phone");

	if(pw.equals(pw2)){
		Member member = new Member();
		
		member.setEmail(ID);
		member.setPassword(pw);
		member.setName(name);
		member.setPostCode(postCode);
		member.setAddress(address);
		member.setPhone(phone);
		
		MemberService newMember = new MemberService();
		
		newMember.addMember(member);
%>	
		<script>
			alert("회원가입 성공");
			window.location.replace("/sign/signInPage.jsp");
		</script>
<%
	}else{
%>
		<script>
			alert("두 비밀번호의 값이 다릅니다.")
			history.go(-1);
		</script>
<%	
	}
%>
</body>
</html>