<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Member"%>
<%@ page import="service.MemberService" %>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
</head>
<body>
<%
	String ID = request.getParameter("ID");
	String pw = request.getParameter("pw");
	int memberID = 0;

	MemberService memberService = new MemberService();
	
	if((ID != null && !ID.equals(""))
			&& (pw != null && !pw.equals(""))){
		Member temp = new Member();
		temp.setEmail(ID);
		temp.setPassword(pw);
		Member mem = memberService.loginCheck(temp);	// db에 있는 아이디면 로그인.
		
		if(mem !=null && !mem.equals("")){
			memberID = mem.getMemberID();
			
			session.setAttribute("memberID",memberID);	//고유번호 세션저장
			session.setAttribute("ID",ID);				//아이디 세션저장
			
%>		
			<script>
				swal({
				title: "성공",
				text: "로그인 성공 <%=mem.getEmail()%> 님 환영합니다.",
				type: "success"
				},
					function(){
				window.location.replace("/main.jsp");
				});
			</script>
<%	
		}else{		
%>		
			<script>
				alert("아이디 혹은 비밀번호가 틀렸습니다.");
				window.location.replace("/sign/signInPage.jsp");
			</script>			
<%
		}
	}else{

	}
%>
</body>
</html>