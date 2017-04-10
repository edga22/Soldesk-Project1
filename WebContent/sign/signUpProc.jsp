<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="dao.MemberDao" %>
<%@ page import="dao.DbBasedMemberDao" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
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
	
	if(pw.equals(pw2)){	// 두 비밀번호가 같을 때.
		Member member = new Member();
				
		member.setEmail(ID);
		member.setPassword(pw);
		member.setName(name);
		member.setPostCode(postCode);
		member.setAddress(address);
		member.setPhone(phone);
		
		MemberDao newMember = new DbBasedMemberDao();
				
		newMember.addMember(member);
%>	
		<script>
			alert("회원가입 성공<%=member.getEmail()%>님 환영합니다.");
			window.location.replace("/sign/signInPage.jsp");
		</script>
<%
	}else{	//비밀번호가 다를경우
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