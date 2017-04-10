<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
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
	response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
	String ID = request.getParameter("str_email01")+"@"+request.getParameter("str_email02");
	String pw = request.getParameter("psw");
	String pw2 = request.getParameter("psw2");
	String name = request.getParameter("name");
	int postCode = Integer.parseInt(request.getParameter("postCode"));
	String address = request.getParameter("address1")+" "+request.getParameter("address2");
	String phone = request.getParameter("phone");
	
	Member member = new Member();
	
	MemberDao newMember = new DbBasedMemberDao();

	if(pw.equals(pw2)){
	
		member.setEmail(ID);
		member.setPassword(pw);
		member.setName(name);
		member.setPostCode(postCode);
		member.setAddress(address);
		member.setPhone(phone);
				
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
			alert("이미 있는 아이디 혹은 두 비밀번호가 다릅니다.")
			history.go(-1);
		</script>
<%	
	}
%>
</body>
</html>