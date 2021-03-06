<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="service.MemberService"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
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
	
	if(pw.equals(pw2)){	// 두 비밀번호가 같을 때.(비밀번호 확인 되었을때)
		Member member = new Member();
		MemberService newMember = new MemberService();
		
		member.setEmail(ID);
		if(pw.length()<6){
	%>
		<script>
			alert("비밀번호 숫자가 너무 적습니다.");
			history.go(-1);
		</script>
	<%	}else{
		member.setPassword(pw);
		member.setName(name);
		member.setPostCode(postCode);
		member.setAddress(address);
		member.setPhone(phone);
		
		if(newMember.idCheck(member) == true){	// 아이디가 중복 되었을때.
%>		
		<script>
			alert("존재하는 아이디혹은 전화번호 입니다. 다시입력하세요");
			history.go(-1);
		</script>
<%
		}else if(newMember.idCheck(member) ==false){	//아이디 중복이 아닐때
			
			newMember.addMember(member);
%>	
		<script>
			swal({
				title: "성공",
				text: "회원가입 성공 <%=member.getEmail()%> 님 환영합니다.",
				type: "success"
			},
			function(){
				window.location.replace("/sign/signInPage.jsp");
			});
		</script>
<%			}
		}
	}else{	//비밀번호가 다를경우
%>
		<script>
			alert("두 비밀번호가 다릅니다.")
			history.go(-1);
		</script>
<%
	}
	%>
</body>
</html>